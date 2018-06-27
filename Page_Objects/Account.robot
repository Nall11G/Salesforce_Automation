*** Settings ***
Documentation    Suite description
Library     Selenium2Library
Library     ../CustomLibrary/AccountLibrary.py
Resource  ../TestCases/TestSuite1.robot


*** Variables ***
${Account_Name_c}    Id=con4
${Account_Record_Type_Selection}    name=p3
${Account_Name_A}    Id=acc2
${Billing_Street}    Id=acc17street
${Billing_City}    Id=acc17city
${Billing_State}    Id=acc17state
${Billing_Zip}    Id=acc17zip
${Billing_Country}    Id=acc17country
${Account_Obj}    xpath=.//*[@id='Account_Tab']/a
${Acc_Type}       Id=acc6
${New_Button}     name=new
${Continue}     xpath=.//*[@id='bottomButtonRow']/input[1]
${Save}    name=save


*** Keywords ***
Account Creation
    wait until element is visible  ${Account_Obj}
    Click Element    ${Account_Obj}
    Click Element    ${New_Button}
    Set Selenium Implicit Wait    20s
    Click Element    ${Continue}
    Set Browser Implicit Wait       10s
    Set Selenium Speed    1s
    Input Text    ${Account_Name_A}    ${Acc_Name}
    Input Text    ${Billing_Street}    ${Bill_St}
    Input Text    ${Billing_City}       ${Bill_City}
    Input Text    ${Billing_State}   ${Bill_State}
    Input Text    ${Billing_Zip}    ${Bill_Code}
    Input Text    ${Billing_Country}    ${Bill_Country}
    @{Type1}=    Get List Items    ${Acc_Type}
    Select From List By Value    ${Acc_Type}    @{Type1}[3]
    Click Element    ${Save}
    Capture Page Screenshot


