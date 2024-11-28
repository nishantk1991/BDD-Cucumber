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


GET_VALIDATE ARRC_RATES_SAVG001_CALCULATE SIMPLE AVERGARE RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Requests\\Request_ARRCE2ESAVG001.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG001.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG001.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_SAVG002_CALCULATE SIMPLE AVERGARE RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Requests\\Request_ARRCE2ESAVG002.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG002.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG002.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG002.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_SAVG003_CALCULATE SIMPLE AVERGARE RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Requests\\Request_ARRCE2ESAVG003.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG003.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG003.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG003.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_SAVG004_CALCULATE SIMPLE AVERGARE RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Requests\\Request_ARRCE2ESAVG004.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG004.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG004.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG004.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_SAVG005_CALCULATE SIMPLE AVERGARE RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Requests\\Request_ARRCE2ESAVG005.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG005.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG005.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG005.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_SAVG006_CALCULATE SIMPLE AVERGARE RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Requests\\Request_ARRCE2ESAVG006.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG006.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG006.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG006.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_SAVG007_CALCULATE SIMPLE AVERGARE RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Requests\\Request_ARRCE2ESAVG007.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG007.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG007.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG007.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_SAVG008_CALCULATE SIMPLE AVERGARE RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Requests\\Request_ARRCE2ESAVG008.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG008.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG008.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG008.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_SAVG009_CALCULATE SIMPLE AVERGARE RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Requests\\Request_ARRCE2ESAVG009.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG009.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG009.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG009.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_SAVG010_CALCULATE SIMPLE AVERGARE RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Requests\\Request_ARRCE2ESAVG010.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG010.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG010.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG010.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_SAVG011_CALCULATE SIMPLE AVERGARE RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Requests\\Request_ARRCE2ESAVG011.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG011.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG011.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG011.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_SAVG012_CALCULATE SIMPLE AVERGARE RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Requests\\Request_ARRCE2ESAVG012.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG012.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG012.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG012.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_SAVG013_CALCULATE SIMPLE AVERGARE RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Requests\\Request_ARRCE2ESAVG013.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG013.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG013.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG013.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_SAVG014_CALCULATE SIMPLE AVERGARE RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Requests\\Request_ARRCE2ESAVG014.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG014.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG014.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG014.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_SAVG015_CALCULATE SIMPLE AVERGARE RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Requests\\Request_ARRCE2ESAVG015.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG015.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG015.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG015.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_SAVG016_CALCULATE SIMPLE AVERGARE RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Requests\\Request_ARRCE2ESAVG016.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG016.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG016.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG016.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_SAVG017_CALCULATE SIMPLE AVERGARE RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Requests\\Request_ARRCE2ESAVG017.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG017.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG017.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG017.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_SAVG018_CALCULATE SIMPLE AVERGARE RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Requests\\Request_ARRCE2ESAVG018.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG018.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG018.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG018.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_SAVG019_CALCULATE SIMPLE AVERGARE RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Requests\\Request_ARRCE2ESAVG019.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG019.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG019.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG019.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_SAVG020_CALCULATE SIMPLE AVERGARE RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Requests\\Request_ARRCE2ESAVG020.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG020.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG020.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG020.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_RATES_SAVG021_CALCULATE SIMPLE AVERGARE RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Requests\\Request_ARRCE2ESAVG021.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG021.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG021.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimAvgRatesv1.3_Response\\Response_ARRCE2ESAVG021.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
