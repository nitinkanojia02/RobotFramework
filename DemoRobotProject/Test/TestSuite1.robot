*** Settings ***

Library    SeleniumLibrary

Suite Setup         Open Browser    ${URL}        chrome
# Suite Teardown      Close Browser
     
*** Test Cases ***

TestScript1
     Maximize Browser Window
     Set Browser Implicit Wait    10
     LOGINKW
     Go To             http://localhost/WashConnectWeb/User/UserList.aspx
     # Go To             http://localhost/WashConnectWeb/User/UserList.aspx 
     # Input Text        id=ctl00_ContentPlaceHolderParam_txtSearch    Demo  
     # Click Element     xpath=//i[@class='fa fa-search'] 
     # Click Element     xpath=//td[@aria-describedby="gvUser_UserName"]   
     # Click Element     xpath=//i[@class='mdi mdi-delete-forever']
     # Click Element     xpath=//span[text()='Yes']    
     # Click Element     xpath=//span[text()='OK'] 
     # Sleep    5       
     Click Element     xpath=//i[@class='fa fa-plus']
     Input Text        xpath=//input[@id='ctl00_ContentPlaceHolder1_txtUserName']    Demo    
     Input Password    xpath=//input[@name='ctl00$ContentPlaceHolder1$txtPwd']       Demo!@#456  
     Input Password    xpath=//input[@name='ctl00$ContentPlaceHolder1$txtConfPwd']   Demo!@#456  
     Input Text        xpath=//input[@name='ctl00$ContentPlaceHolder1$txtFName']     Demo
     Input Text        xpath=//input[@name='ctl00$ContentPlaceHolder1$txtLName']     Demo 
     Click Element     xpath=//span[@class='ui-icon ui-icon-triangle-2-n-s']
     Click Element     xpath=//input[@title='Automation Corporate']
     Click Element     xpath=//span[@class='ui-icon ui-icon-circle-close']
     Click Element     id=ctl00_ContentPlaceHolder1_gvUserRoles_ctl02_chkRole   
     Click Element     xpath=//i[@class='fa fa-save']  
     Log               The Test Suite ${TEST_NAME} is successfully passed   
     Log               This Test was run by user %{Username} on Operating System %{os}
     Go To             http://localhost/WashConnectWeb/User/UserLst.aspx
    
    
*** Variables ***
${URL}                 http://localhost/WashConnectWeb    
@{CREDENTIALS}         nitinkanojia            
&{LOGINDATA}           Username=nitinkanojia    Password=N!t!n1995

*** Keywords ***
LOGINKW
    
    Input Text         name=txtUserName         @{CREDENTIALS}[0]  
    Input Password     name=txtPassword         &{LOGINDATA}[Password] 
    Click Element      id=divLogIn  