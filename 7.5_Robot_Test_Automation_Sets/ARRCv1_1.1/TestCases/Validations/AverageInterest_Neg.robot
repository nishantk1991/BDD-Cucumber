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


POST_VALIDATE ARRCINTNEGCA_001- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_001.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_001.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_001.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_002- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_002.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_002.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_002.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_002.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE ARRCINTNEGCA_003- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_003.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_003.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_003.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_003.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_004- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_004.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_004.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_004.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_004.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE ARRCINTNEGCA_005- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_005.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_005.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_005.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_005.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_006- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_006.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_006.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_006.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_006.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_007- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_007.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_007.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_007.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_007.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_008- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_008.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_008.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_008.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_008.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_009- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_009.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_009.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_009.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_009.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_010- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_010.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_010.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_010.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_010.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
    #${res}    Mx Compare Content Of One File In Another File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_010.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_010.json    

POST_VALIDATE ARRCINTNEGCA_011- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_011.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_011.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_011.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_011.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE} 

POST_VALIDATE ARRCINTNEGCA_012- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_012.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_012.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_012.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_012.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_013- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_013.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_013.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_013.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_013.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_014- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_014.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_014.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_014.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_014.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_015- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_015.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_015.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_015.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_015.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_016- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_016.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_016.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_016.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_016.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_017- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_017.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_017.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_017.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_017.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_018- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_018.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_018.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_018.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_018.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_019- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_019.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_019.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_019.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_019.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_020- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_020.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_020.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_020.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_020.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_021- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_021.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_021.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_021.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_021.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_022- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_022.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_022.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_022.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_022.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_023- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_023.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_023.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_023.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_023.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_029- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_029.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_029.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_029.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_029.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_030- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_030.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_030.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_030.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_030.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_031- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_031.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_031.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_031.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_031.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_032- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_032.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_032.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_032.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_032.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_033- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_033.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_033.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_033.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_033.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_034- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_034.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_034.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_034.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_034.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_035- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_035.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_035.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_035.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_035.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_036- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_036.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_036.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_036.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_036.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_037- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_037.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_037.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_037.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_037.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_038- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_038.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_038.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_038.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_038.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_039- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_039.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_039.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_039.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_039.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_040- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_040.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_040.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_040.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_040.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_041- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_041.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_041.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_041.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_041.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE ARRCINTNEGCA_045- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_045.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_045.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_045.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_045.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_046- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_046.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_046.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_046.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_046.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_047- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_047.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_047.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_047.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_047.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_048- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_048.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_048.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_048.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_048.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE ARRCINTNEGCA_050- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_050.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_050.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_050.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_050.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_051- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_051.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_051.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_051.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_051.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_052- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_052.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_052.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_052.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_052.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE ARRCINTNEGCA_053- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_053.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_053.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_053.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_053.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_054- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_054.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_054.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_054.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_054.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE ARRCINTNEGCA_055- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_055.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_055.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_055.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_055.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE ARRCINTNEGCA_058- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_058.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_058.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_058.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_058.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_059- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_059.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_059.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_059.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_059.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_060- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_060.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_060.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_060.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_060.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_061- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_061.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_061.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_061.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_061.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE} 


POST_VALIDATE ARRCINTNEGCA_063- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_063.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_063.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_063.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_063.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_064- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_064.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_064.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_064.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_064.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_065- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_065.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_065.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_065.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_065.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_066- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_066.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_066.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_066.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_066.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_067- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_067.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_067.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_067.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_067.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_068- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_068.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_068.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_068.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_068.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_069- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_069.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_069.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_069.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_069.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_070- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_070.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_070.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_070.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_070.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_071- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_071.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_071.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_071.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_071.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_072- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_072.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_072.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_072.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_072.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
    
POST_VALIDATE ARRCINTNEGCA_073- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_073.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_073.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_073.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_073.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
    
POST_VALIDATE ARRCINTNEGCA_074- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_074.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_074.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_074.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_074.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_076- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_076.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_076.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_076.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_076.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE ARRCINTNEGCA_078- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_078.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_078.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_078.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_078.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE ARRCINTNEGCA_080- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_080.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_080.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_080.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_080.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_081- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_081.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_081.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_081.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_081.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_082- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_082.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_082.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_082.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_082.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
    
POST_VALIDATE ARRCINTNEGCA_083- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_083.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_083.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_083.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_083.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
    
POST_VALIDATE ARRCINTNEGCA_084- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_084.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_084.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_084.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_084.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_085- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_085.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_085.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_085.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_085.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_086- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_086.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_086.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_086.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_086.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_087- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_087.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_087.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_087.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_087.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_088- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_088.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_088.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_088.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_088.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_089- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_089.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_089.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_089.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_089.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_090- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_090.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_090.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_090.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_090.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_091- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_091.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_091.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_091.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_091.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE ARRCINTNEGCA_093- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_093.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_093.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_093.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_093.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
    
POST_VALIDATE ARRCINTNEGCA_094- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_094.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_094.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_094.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_094.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_095- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_095.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_095.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_095.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_095.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_096- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_096.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_096.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_096.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_096.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_097- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_097.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_097.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_097.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_097.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_098- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_098.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_098.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_098.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_098.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_099- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_099.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_099.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_099.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_099.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_100- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_100.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_100.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_100.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_100.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE ARRCINTNEGCA_101- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_101.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_101.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_101.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_101.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_102- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_102.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_102.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_102.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_102.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
    
POST_VALIDATE ARRCINTNEGCA_103- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_103.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_103.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_103.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_103.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
    
POST_VALIDATE ARRCINTNEGCA_104- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_104.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_104.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_104.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_104.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_105- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_105.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_105.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_105.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_105.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_106- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_106.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_106.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_106.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_106.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_107- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_107.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_107.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_107.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_107.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_108- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_108.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_108.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_108.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_108.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE ARRCINTNEGCA_126- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_126.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_126.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_126.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_126.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_127- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_127.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_127.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_127.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_127.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_128- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_128.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_128.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_128.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_128.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_129- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_129.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_129.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_129.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_129.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_130- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_130.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_130.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_130.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_130.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_131- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_131.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_131.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_131.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_131.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_132- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_132.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_132.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_132.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_132.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
    
POST_VALIDATE ARRCINTNEGCA_133- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_133.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_133.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_133.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_133.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
    
POST_VALIDATE ARRCINTNEGCA_134- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_134.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_134.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_134.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_134.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGCA_135- Validation / Negative Scenarios for Average Compounding Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\AverageInterest_Requests\\Request_ARRCINTNEGCA_135.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_135.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_135.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\AverageInterest_Response\\Response_ARRCINTNEGCA_135.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

