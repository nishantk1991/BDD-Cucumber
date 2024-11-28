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



POST_VALIDATE SORA_SAVG_IntPay_TC001- Payment scenarios - Realtime
    [Documentation]    This test case sends POST request and gives rates and Interest with simple average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_SORA_Interest\\SORA_SAVGI\\Request_SAVGISORATC001.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SORA_Interest\\SORA_SAVGInew\\Response_SAVGISORATC001.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_SORA_Interest\\SORA_SAVGI\\Response_SAVGISORATC001.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SORA_Interest\\SORA_SAVGI\\Response_SAVGISORATC001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE SORA_SAVG_IntPay_TC002- Payment scenarios - Realtime
    [Documentation]    This test case sends POST request and gives rates and Interest with simple average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_SORA_Interest\\SORA_SAVGI\\Request_SAVGISORATC002.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SORA_Interest\\SORA_SAVGInew\\Response_SAVGISORATC002.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_SORA_Interest\\SORA_SAVGI\\Response_SAVGISORATC002.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SORA_Interest\\SORA_SAVGI\\Response_SAVGISORATC002.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE SORA_SAVG_IntPay_TC003- Payment scenarios - Realtime
    [Documentation]    This test case sends POST request and gives rates and Interest with simple average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_SORA_Interest\\SORA_SAVGI\\Request_SAVGISORATC003.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SORA_Interest\\SORA_SAVGInew\\Response_SAVGISORATC003.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_SORA_Interest\\SORA_SAVGI\\Response_SAVGISORATC003.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SORA_Interest\\SORA_SAVGI\\Response_SAVGISORATC003.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE SORA_SAVG_IntPay_TC004- Payment scenarios - Realtime
    [Documentation]    This test case sends POST request and gives rates and Interest with simple average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_SORA_Interest\\SORA_SAVGI\\Request_SAVGISORATC004.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SORA_Interest\\SORA_SAVGInew\\Response_SAVGISORATC004.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_SORA_Interest\\SORA_SAVGI\\Response_SAVGISORATC004.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SORA_Interest\\SORA_SAVGI\\Response_SAVGISORATC004.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE SORA_SAVG_IntPay_TC005- Payment scenarios - Realtime
    [Documentation]    This test case sends POST request and gives rates and Interest with simple average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_SORA_Interest\\SORA_SAVGI\\Request_SAVGISORATC005.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SORA_Interest\\SORA_SAVGInew\\Response_SAVGISORATC005.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_SORA_Interest\\SORA_SAVGI\\Response_SAVGISORATC005.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SORA_Interest\\SORA_SAVGI\\Response_SAVGISORATC005.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
