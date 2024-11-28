curdir = r'C:\7.5_Robot_Test_Automation_Sets\ARRC_GUI'
DRIVER_EXE_PATH = r'C:\UTF\UTF\UnifiedTestFramework'
RESOURCE_PATH = curdir + "\\TestData"

## Core LIQ config

Run_Core_Validation_GUI = True  # True/False
username = "srinivas"
password = "Password@123"
app_path = "C:\\LoanIQ76\\Client76\\LoanIQJ.exe"

hostname = "10.208.80.64"
REST_HostName= hostname

##===============KEYCLOAK Config===============##

KEY_CLOAK_API_URL="http://10.208.80.64:8090" 
KEY_CLOAK_USERNAME= r'truser26'
KEY_CLOAK_PASSWORD = r'password'
grant_type = 'client_credentials'
# User_ID= "truser26"

KEY_CLOAK_CLIENT_ID= r'LoanIQ_WEB'
KEY_CLOAK_CLIENT_SECRET= r'72359912-a65d-42e6-813f-b5d2d621fdec'

KEY_CLOAK_ALIAS="LIQKeyCLoakAPISessionAlias"

KEY_CLOAK_URLPrefix= r'/auth/realms/BookingIQ/protocol/openid-connect/token'

##===============TRANSACT Config===============##

NEXUS_TRANSACT_Prefix=r'/transact/v1/transactions'

NEXUS_TRANSACT_API_PORT='9100'
NEXUS_TRANSACT_API_URL= "http://"+ REST_HostName+ ':'+ NEXUS_TRANSACT_API_PORT
NEXUS_TRANSACT_API_ALIAS="alias"

TRANSACT_UI_URL= r'http://10.208.80.64:4200/'
TRANSACT_UI_USERNAME= r'truser26'
TRANSACT_UI_PASSWORD = r'password'

TestData_Path = curdir + r'/TestData'

Save_Actual_File_Path = 'C:\\temp'

JSON_REQUEST_Path=  curdir + r'/TestData/Request_JSON Files'

JSON_EXPECTED_RESPONSE_Path=  curdir + r'/TestData/Expected_Response_JSON Files'

# billPayment_xlsx=  curdir + r'/TestData/REST_API_Details_BILL Payment.xlsx'

BROWSER='chrome'
FolderLocation= r'C:\Temp'
HeadlessMode_Condition = "No"  #Yes / No
objecttimeout="15s"
processingTimeout = "15s"
objectShortTimeout= "1s"


## ARRC Config
ARRC_UI_URL= r'https://libor-transition-calculator.fusionfabric.cloud/t-755ed369-c100-4561-911c-dac288dc62b4/daily-compounding/SOFR'
username_ARRC = r'diptajit.bhattacharyya@finastra.com'
password_ARRC= r'test'

##---------------End------------------------