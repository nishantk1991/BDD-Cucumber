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

GET_VALIDATE LIQSC36597_SAVGRatesOPS001_CALCULATE Simple Average Rate
    [Documentation]    This test case calculates Simple Average Rate when OPS = TRUE
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Requests\\Request_SAVGOPSv1.5Rates_001.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Response\\Response_SAVGOPSv1.5Rates_001.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Response\\Response_SAVGOPSv1.5Rates_001.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Response\\Response_SAVGOPSv1.5Rates_001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36597_SAVGRatesOPS002_CALCULATE Simple Average Rate
    [Documentation]    This test case calculates Simple Average Rate when OPS = TRUE
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Requests\\Request_SAVGOPSv1.5Rates_002.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Response\\Response_SAVGOPSv1.5Rates_002.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Response\\Response_SAVGOPSv1.5Rates_002.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Response\\Response_SAVGOPSv1.5Rates_002.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36597_SAVGRatesOPS003_CALCULATE Simple Average Rate
    [Documentation]    This test case calculates Simple Average Rate when OPS = TRUE
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Requests\\Request_SAVGOPSv1.5Rates003.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Response\\Response_SAVGOPSv1.5Rates003.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Response\\Response_SAVGOPSv1.5Rates003.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Response\\Response_SAVGOPSv1.5Rates003.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36597_SAVGRatesOPS004_CALCULATE Simple Average Rate
    [Documentation]    This test case calculates Simple Average Rate when OPS = TRUE
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Requests\\Request_SAVGOPSv1.5Rates004.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Response\\Response_SAVGOPSv1.5Rates004.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Response\\Response_SAVGOPSv1.5Rates004.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Response\\Response_SAVGOPSv1.5Rates004.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36597_SAVGRatesOPS005_CALCULATE Simple Average Rate
    [Documentation]    This test case calculates Simple Average Rate when OPS = TRUE
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Requests\\Request_SAVGOPSv1.5Rates005.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Response\\Response_SAVGOPSv1.5Rates005.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Response\\Response_SAVGOPSv1.5Rates005.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Response\\Response_SAVGOPSv1.5Rates005.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36597_SAVGRatesOPS006_CALCULATE Simple Average Rate
    [Documentation]    This test case calculates Simple Average Rate when OPS = TRUE
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Requests\\Request_SAVGOPSv1.5Rates006.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Response\\Response_SAVGOPSv1.5Rates006.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Response\\Response_SAVGOPSv1.5Rates006.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Response\\Response_SAVGOPSv1.5Rates006.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36597_SAVGRatesOPS007_CALCULATE Simple Average Rate
    [Documentation]    This test case calculates Simple Average Rate when OPS = TRUE
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Requests\\Request_SAVGOPSv1.5Rates007.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Response\\Response_SAVGOPSv1.5Rates007.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Response\\Response_SAVGOPSv1.5Rates007.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Response\\Response_SAVGOPSv1.5Rates007.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36597_SAVGRatesOPS008_CALCULATE Simple Average Rate
    [Documentation]    This test case calculates Simple Average Rate when OPS = TRUE
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Requests\\Request_SAVGOPSv1.5Rates008.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Response\\Response_SAVGOPSv1.5Rates008.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Response\\Response_SAVGOPSv1.5Rates008.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Response\\Response_SAVGOPSv1.5Rates008.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36597_SAVGRatesOPS009_CALCULATE Simple Average Rate
    [Documentation]    This test case calculates Simple Average Rate when OPS = TRUE
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Requests\\Request_SAVGOPSv1.5Rates009.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Response\\Response_SAVGOPSv1.5Rates009.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Response\\Response_SAVGOPSv1.5Rates009.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Response\\Response_SAVGOPSv1.5Rates009.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36597_SAVGRatesOPS010_CALCULATE Simple Average Rate
    [Documentation]    This test case calculates Simple Average Rate when OPS = TRUE
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Requests\\Request_SAVGOPSv1.5Rates010.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Response\\Response_SAVGOPSv1.5Rates010.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Response\\Response_SAVGOPSv1.5Rates010.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Response\\Response_SAVGOPSv1.5Rates010.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36597_SAVGRatesOPS011_CALCULATE Simple Average Rate
    [Documentation]    This test case calculates Simple Average Rate when OPS = TRUE
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Requests\\Request_SAVGOPSv1.5Rates011.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Response\\Response_SAVGOPSv1.5Rates011.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Response\\Response_SAVGOPSv1.5Rates011.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Response\\Response_SAVGOPSv1.5Rates011.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36597_SAVGRatesOPS012_CALCULATE Simple Average Rate
    [Documentation]    This test case calculates Simple Average Rate when OPS = TRUE
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Requests\\Request_SAVGOPSv1.5Rates012.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Response\\Response_SAVGOPSv1.5Rates012.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Response\\Response_SAVGOPSv1.5Rates012.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Response\\Response_SAVGOPSv1.5Rates012.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36597_SAVGRatesOPS013_CALCULATE Simple Average Rate
    [Documentation]    This test case calculates Simple Average Rate when OPS = TRUE
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Requests\\Request_SAVGOPSv1.5Rates013.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Response\\Response_SAVGOPSv1.5Rates013.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Response\\Response_SAVGOPSv1.5Rates013.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Response\\Response_SAVGOPSv1.5Rates013.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36597_SAVGRatesOPS014_CALCULATE Simple Average Rate
    [Documentation]    This test case calculates Simple Average Rate when OPS = TRUE
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Requests\\Request_SAVGOPSv1.5Rates014.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Response\\Response_SAVGOPSv1.5Rates014.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Response\\Response_SAVGOPSv1.5Rates014.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Response\\Response_SAVGOPSv1.5Rates014.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36597_SAVGRatesOPS015_CALCULATE Simple Average Rate
    [Documentation]    This test case calculates Simple Average Rate when OPS = TRUE
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Requests\\Request_SAVGOPSv1.5Rates015.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Response\\Response_SAVGOPSv1.5Rates015.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Response\\Response_SAVGOPSv1.5Rates015.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\SAVGv1.5Rates_Response\\Response_SAVGOPSv1.5Rates015.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
