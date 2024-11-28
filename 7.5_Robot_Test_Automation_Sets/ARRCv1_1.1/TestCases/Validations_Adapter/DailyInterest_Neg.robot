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

#Test Setup    GIVEN VALID AUTHENTICATION TOKEN AND SESSION IS CREATED
Test Setup    Given VALID SESSION IS CREATED FOR REST REQUESTS FOR ARRC ADAPTER    ${APIMUrl}    ${alias}

*** Variables ***
@{IGNORED_KEYS_JSON_COMPARE}    Create List    comment    legalDisclaimer    lastUpdatedFromSource    

${HEADERS}
${RESPONSE}
${API_REQUEST_FROM_FILE}



*** Test Cases ***


POST_VALIDATE ARRCINTNEGDC_001- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_001.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_001.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_001.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_002- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_002.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_002.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_002.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_002.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE ARRCINTNEGDC_003- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_003.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_003.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_003.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_003.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_004- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_004.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_004.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_004.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_004.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE ARRCINTNEGDC_005- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_005.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_005.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_005.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_005.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_006- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_006.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_006.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_006.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_006.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_007- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_007.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_007.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_007.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_007.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_008- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_008.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_008.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_008.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_008.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_009- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_009.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_009.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_009.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_009.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_010- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_010.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_010.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_010.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_010.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_011- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_011.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_011.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_011.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_011.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE} 

POST_VALIDATE ARRCINTNEGDC_012- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_012.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_012.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_012.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_012.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_013- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_013.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_013.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_013.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_013.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_014- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_014.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_014.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_014.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_014.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_015- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_015.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_015.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_015.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_015.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_016- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_016.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_016.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_016.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_016.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_017- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_017.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_017.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_017.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_017.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_018- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_018.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_018.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_018.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_018.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_019- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_019.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_019.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_019.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_019.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_020- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_020.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_020.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_020.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_020.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_021- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_021.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_021.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_021.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_021.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_022- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_022.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_022.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_022.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_022.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_023- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_023.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_023.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_023.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_023.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_029- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_029.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_029.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_029.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_029.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_030- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_030.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_030.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_030.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_030.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_031- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_031.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_031.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_031.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_031.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_032- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_032.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_032.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_032.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_032.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_033- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_033.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_033.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_033.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_033.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_034- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_034.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_034.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_034.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_034.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_035- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_035.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_035.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_035.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_035.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_036- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_036.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_036.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_036.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_036.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_037- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_037.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_037.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_037.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_037.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_038- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_038.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_038.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_038.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_038.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_039- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_039.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_039.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_039.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_039.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_040- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_040.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_040.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_040.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_040.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_041- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_041.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_041.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_041.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_041.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE ARRCINTNEGDC_045- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_045.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_045.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_045.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_045.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_046- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_046.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_046.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_046.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_046.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_047- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_047.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_047.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_047.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_047.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_048- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_048.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_048.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_048.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_048.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE ARRCINTNEGDC_050- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_050.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_050.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_050.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_050.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_051- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_051.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_051.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_051.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_051.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_052- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_052.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_052.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_052.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_052.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE ARRCINTNEGDC_053- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_053.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_053.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_053.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_053.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_054- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_054.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_054.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_054.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_054.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE ARRCINTNEGDC_055- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_055.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_055.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_055.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_055.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE ARRCINTNEGDC_058- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_058.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_058.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_058.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_058.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_059- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_059.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_059.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_059.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_059.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_060- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_060.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_060.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_060.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_060.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_061- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_061.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_061.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_061.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_061.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE} 


POST_VALIDATE ARRCINTNEGDC_063- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_063.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_063.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_063.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_063.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_064- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_064.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_064.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_064.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_064.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_065- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_065.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_065.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_065.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_065.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_066- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_066.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_066.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_066.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_066.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_067- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_067.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_067.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_067.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_067.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_068- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_068.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_068.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_068.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_068.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_069- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_069.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_069.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_069.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_069.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_070- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_070.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_070.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_070.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_070.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_071- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_071.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_071.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_071.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_071.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_072- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_072.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_072.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_072.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_072.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
    
POST_VALIDATE ARRCINTNEGDC_073- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_073.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_073.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_073.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_073.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
    
POST_VALIDATE ARRCINTNEGDC_074- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_074.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_074.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_074.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_074.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_076- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_076.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_076.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_076.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_076.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE ARRCINTNEGDC_078- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_078.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_078.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_078.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_078.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE ARRCINTNEGDC_080- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_080.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_080.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_080.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_080.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_081- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_081.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_081.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_081.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_081.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_082- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_082.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_082.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_082.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_082.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
    
POST_VALIDATE ARRCINTNEGDC_083- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_083.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_083.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_083.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_083.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
    
POST_VALIDATE ARRCINTNEGDC_084- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_084.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_084.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_084.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_084.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_085- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_085.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_085.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_085.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_085.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_086- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_086.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_086.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_086.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_086.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_087- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_087.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_087.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_087.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_087.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_088- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_088.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_088.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_088.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_088.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_089- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_089.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_089.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_089.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_089.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_090- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_090.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_090.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_090.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_090.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_091- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_091.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_091.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_091.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_091.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE ARRCINTNEGDC_093- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_093.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_093.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_093.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_093.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
    
POST_VALIDATE ARRCINTNEGDC_094- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_094.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_094.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_094.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_094.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_095- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_095.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_095.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_095.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_095.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_096- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_096.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_096.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_096.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_096.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_097- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_097.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_097.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_097.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_097.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_098- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_098.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_098.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_098.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_098.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_099- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_099.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_099.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_099.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_099.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_100- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_100.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_100.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_100.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_100.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE ARRCINTNEGDC_101- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_101.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_101.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_101.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_101.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_102- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_102.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_102.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_102.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_102.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
    
POST_VALIDATE ARRCINTNEGDC_103- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_103.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_103.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_103.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_103.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
    
POST_VALIDATE ARRCINTNEGDC_104- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_104.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_104.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_104.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_104.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_105- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_105.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_105.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_105.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_105.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_106- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_106.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_106.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_106.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_106.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_107- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_107.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_107.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_107.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_107.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_108- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_108.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_108.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_108.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_108.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE ARRCINTNEGDC_126- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_126.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_126.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_126.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_126.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_127- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_127.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_127.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_127.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_127.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_128- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_128.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_128.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_128.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_128.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_129- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_129.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_129.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_129.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_129.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_130- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_130.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_130.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_130.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_130.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_131- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_131.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_131.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_131.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_131.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_132- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_132.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_132.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_132.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_132.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
    
POST_VALIDATE ARRCINTNEGDC_133- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_133.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_133.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_133.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_133.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
    
POST_VALIDATE ARRCINTNEGDC_134- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_134.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_134.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_134.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_134.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_135- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_135.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_135.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_135.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_135.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_136- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_136.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_136.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_136.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_136.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_137- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_137.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_137.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_137.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_137.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_138- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_138.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_138.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_138.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_138.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGDC_139- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyInterest_Requests\\Request_ARRCINTNEGDC_139.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest  ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_139.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_139.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyInterest_Response\\Response_ARRCINTNEGDC_139.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}








