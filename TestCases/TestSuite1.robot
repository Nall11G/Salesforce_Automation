*** Settings ***
Documentation    Suite description
Library  Selenium2Library
Resource  ../Page_Objects/Common_Configure.robot
Resource  ../Page_Objects/Contact.robot
Resource  ../Page_Objects/Account.robot
Library     ../CustomLibrary/Contact.py
Library     ../CustomLibrary/DemoExcel.py
#Variables   ../TestCases/Var.robot
Resource   ../TestCases/Var.robot
Library  AllureReportLibrary         E:\\Desktop\\Allure
Test Setup  Login With Username And Password(1)
Test Teardown  Close Browser


*** Variables ***
${HoH_Error_Alert}    The Head of Household flag should be true for this Contact record!!!


*** Test Cases ***
TC_01
    #[Tags]  Demo
    Login With Username And Password(1)
    ${FirstName}=    read_excel_data  Contact     TC1    FirstName
    Set Global Variable   ${FirstName}
    ${LastName}=    read_excel_data  Contact      TC1    LastName
    Set Global Variable     ${LastName}
    ${SpouseName}=  read_excel_data  Contact     TC1     SpouseName
    Set Global Variable  ${SpouseName}
    ${Mail_Street}=  read_excel_data  Contact     TC1     MailingStreet
    Set Global Variable  ${Mail_Street}
    ${Mail_City}=   read_excel_data  Contact     TC1     MailingCity
    set global variable  ${Mail_City}
    ${Mail_State}=  read_excel_data  Contact     TC1     MailingState
    set global variable  ${Mail_State}
    ${Mail_Code}=   read_excel_data  Contact     TC1     MailingZipCode
    set global variable  ${Mail_Code}
    ${Mail_Country}=    read_excel_data  Contact     TC1    MailingCountry
    set global variable  ${Mail_Country}
    ${Contact_Email}=   read_excel_data  Contact     TC1     Email
    set global variable  ${Contact_Email}
    Contact Creation
    #Close Browser

TC_02
    #Login With Username And Password(1)
    ${FirstName}=    read_excel_data  Contact     TC3     FirstName
    Set Global Variable   ${FirstName}
    ${LastName}=    read_excel_data  Contact      TC2    LastName
    Set Global Variable     ${LastName}
    ${SpouseName}=  read_excel_data  Contact     TC3    SpouseName
    Set Global Variable  ${SpouseName}
    ${Mail_Street}=  read_excel_data  Contact     TC3     MailingStreet
    Set Global Variable  ${Mail_Street}
    ${Mail_City}=   read_excel_data  Contact     TC3    MailingCity
    set global variable  ${Mail_City}
    ${Mail_State}=  read_excel_data  Contact     TC2     MailingState
    set global variable  ${Mail_State}
    ${Mail_Code}=   read_excel_data  Contact     TC2     MailingZipCode
    set global variable  ${Mail_Code}
    ${Mail_Country}=    read_excel_data  Contact     TC2     MailingCountry
    set global variable  ${Mail_Country}
    ${Contact_Email}=   read_excel_data  Contact     TC2     Email
    set global variable  ${Contact_Email}
    ${Birth_Date}   read excel data     Contact     TC3     BirthDate
    set global variable  ${Birth_Date}
    Contact Creation
    #Close Browser

Tc_03
    [Tags]  Demo
    #Login With Username And Password(1)
    ${Acc_Name}=    read_excel_data   Account     TC5     AccountName
    set global variable  ${Acc_Name}
    ${Bill_St}=     read_excel_data   Account     TC5     BillingStreet
    set global variable  ${Bill_St}
    ${Bill_City}=   read_excel_data   Account     TC5     BillingCity
    set global variable  ${Bill_City}
    ${Bill_Code}=   read_excel_data   Account          TC5     BillingZipCode
    set global variable  ${Bill_Code}
    ${Bill_State}=      read_excel_data   Account     TC5      BillingState
    set global variable  ${Bill_State}
    ${Bill_Country}=    read_excel_data   Account      TC5     BillingCountry
    set global variable  ${Bill_Country}
    Account Creation

