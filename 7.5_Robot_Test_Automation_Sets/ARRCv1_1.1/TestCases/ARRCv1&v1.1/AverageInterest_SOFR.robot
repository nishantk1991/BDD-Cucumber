*** Settings ***
Library    RequestsLibrary  
Library    JsonLibrary    
Library    String    
Library    GenerateOidcToken
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

POST_VALIDATE RATE_FOR_ARRCSOFRCA_001_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-02-28 endDate=2020-02-29 with lookback > lockout.
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.1\\AverageInterest_Requests\\SOFR\\Request_ARRCSOFRCA_001.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SOFR\\API_ARRCSOFRCA_001.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SOFR\\Response_ARRCSOFRCA_001.txt  ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
    AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SOFR\\Response_ARRCSOFRCA_001.txt   ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SOFR\\API_ARRCSOFRCA_001.json    ${IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE RATE_FOR_ARRCSOFRCA_004_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-04-27 endDate=2020-05-02 with lookback < lockout
    
   ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.1\\AverageInterest_Requests\\SOFR\\Request_ARRCSOFRCA_004.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SOFR\\API_ARRCSOFRCA_004.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SOFR\\Response_ARRCSOFRCA_004.txt  ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
    AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SOFR\\Response_ARRCSOFRCA_004.txt   ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SOFR\\API_ARRCSOFRCA_004.json    ${IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE RATE_FOR_ARRCSOFRCA_007_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-04-28 endDate=2020-05-06 with lookback < lockout.
    
     ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.1\\AverageInterest_Requests\\SOFR\\Request_ARRCSOFRCA_007.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SOFR\\API_ARRCSOFRCA_007.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SOFR\\Response_ARRCSOFRCA_007.txt  ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
    AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SOFR\\Response_ARRCSOFRCA_007.txt   ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SOFR\\API_ARRCSOFRCA_007.json    ${IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE RATE_FOR_ARRCSOFRCA_009_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-01-31 endDate=2020-02-08 with lookback = lockout.
    
     ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.1\\AverageInterest_Requests\\SOFR\\Request_ARRCSOFRCA_009.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SOFR\\API_ARRCSOFRCA_009.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SOFR\\Response_ARRCSOFRCA_009.txt  ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
    AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SOFR\\Response_ARRCSOFRCA_009.txt   ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SOFR\\API_ARRCSOFRCA_009.json    ${IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE RATE_FOR_ARRCSOFRCA_017_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-02-07 endDate=2020-02-29 with lookback > lockout.
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.1\\AverageInterest_Requests\\SOFR\\Request_ARRCSOFRCA_017.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SOFR\\API_ARRCSOFRCA_017.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SOFR\\Response_ARRCSOFRCA_017.txt  ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
    AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SOFR\\Response_ARRCSOFRCA_017.txt   ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SOFR\\API_ARRCSOFRCA_017.json    ${IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE RATE_FOR_ARRCSOFRCA_018_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario where startDate=2019-09-01 endDate=2019-09-30 with lookback > lockout.
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.1\\AverageInterest_Requests\\SOFR\\Request_ARRCSOFRCA_018.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SOFR\\API_ARRCSOFRCA_018.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SOFR\\Response_ARRCSOFRCA_018.txt  ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
    AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SOFR\\Response_ARRCSOFRCA_018.txt   ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SOFR\\API_ARRCSOFRCA_018.json    ${IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE RATE_FOR_ARRCSOFRCA_023_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario where startDate=2020-01-01 endDate=2020-02-29 with lookback > lockout=0.
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.1\\AverageInterest_Requests\\SOFR\\Request_ARRCSOFRCA_023.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SOFR\\API_ARRCSOFRCA_023.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SOFR\\Response_ARRCSOFRCA_023.txt  ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
    AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SOFR\\Response_ARRCSOFRCA_023.txt   ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SOFR\\API_ARRCSOFRCA_023.json    ${IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE RATE_FOR_ARRCSOFRCA_024_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario where startDate=2019-12-02 endDate=2020-01-31 with lookback < lockout.
    
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.1\\AverageInterest_Requests\\SOFR\\Request_ARRCSOFRCA_024.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SOFR\\API_ARRCSOFRCA_024.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SOFR\\Response_ARRCSOFRCA_024.txt  ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
    AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SOFR\\Response_ARRCSOFRCA_024.txt   ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SOFR\\API_ARRCSOFRCA_024.json    ${IGNORED_KEYS_JSON_COMPARE}



POST_VALIDATE RATE_FOR_ARRCSOFRCA_025_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario where startDate=2019-09-30 endDate=2019-11-30 with lookback = lockout.
    
     ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.1\\AverageInterest_Requests\\SOFR\\Request_ARRCSOFRCA_025.txt
   
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SOFR\\API_ARRCSOFRCA_025.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SOFR\\Response_ARRCSOFRCA_025.txt  ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
    AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SOFR\\Response_ARRCSOFRCA_025.txt   ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SOFR\\API_ARRCSOFRCA_025.json    ${IGNORED_KEYS_JSON_COMPARE}

