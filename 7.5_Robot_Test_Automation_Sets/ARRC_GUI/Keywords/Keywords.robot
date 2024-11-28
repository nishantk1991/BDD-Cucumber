*** Settings ***
Library    RequestsLibrary    
Library    JsonLibrary    
Library    String    
Library    GenericLib    
Library    Collections   
Library    OperatingSystem 
 
*** Keywords ***
Get Value From CSV By Column Name
    [Arguments]    ${filepath}    ${column_name}    ${delimiter}=,    ${line_number}=2
    [Documentation]    This is used to get data from csv file by passing column name
    ...    parameter : 
    ...    1. filepath : csv filepath
    ...    2. column_name : Name of the column
    ...    3. delimiter : csv data separator. Default value is ,
    ...    4. line_number : specify from which row to get data from. Default is 2 because line 1 will have headers.
    ${fileContent}    Get File    ${filepath} 
    @{fileContents}    Split To Lines    ${fileContent}
    ${columns}    Split String    @{fileContents}[0]    ${delimiter}
    ${filesize}    Get Length    ${fileContents}
    ${line_number}    Convert To Integer    ${line_number}
    Run Keyword If    ${line_number} > ${filesize}    Fail    Line number=${line_number} in csv file has no data
    ${line_number}    Evaluate    ${line_number}-1      
    ${data_row}    Split String    @{fileContents}[${line_number}]    ${delimiter}    
    ${column_index}    Get Index From List    ${columns}    ${column_name}
    ${column_value}     Get From List    ${data_row}    ${column_index}
    [Return]    ${column_value} 
    
Replace Json With Csv Values 
    [Documentation] 
    ...    This keyword is used to replace the tag values in json with the column values from csv file
    ...    It takes arguments in the form of dictionary  ${Alldata} .This dictionary comes from the csv file 
    ...    This keyword should be used along with the keyword 'Mx Execute Template With Multiple Data' from GenericLib
    [Arguments]    ${json_file_path}    ${csv_location}    ${delimiter}=,    
    ${csv_datastring}    Get File    ${csv_location} 
    @{all_csvdata}    Split To Lines    ${csv_datastring}
    @{data_header}    Split String    @{all_csvdata}[0]    ${delimiter}    
    ${json_data}    Get File    ${json_file_path}
    ${json_data}    Replace String    ${json_data}    $    ${EMPTY} 
    Log     ${json_data}   
    :FOR    ${key}    IN     @{data_header}  
    \    ${key_value}    Get Value From CSV By Column Name    ${csv_location}    ${key}     
    \    ${json_data}    Replace String    ${json_data}    {${key}}    ${key_value}
    \    Log     ${json_data}  
    [Return]    ${json_data}      
    
Encode URL
    [Arguments]    ${URL}
    ${URL}    Evaluate    "${URL}".replace(":","%3A")
    ${URL}    Evaluate    "${URL}".replace(";","%3B")
    ${URL}    Evaluate    "${URL}".replace("#","%23") 
    ${URL}    Evaluate    "${URL}".replace("?","%3F") 
    [Return]    ${URL}
 
    