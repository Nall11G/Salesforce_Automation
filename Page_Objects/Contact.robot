*** Settings ***
Documentation    Suite description
Library     Selenium2Library
Library     ../CustomLibrary/Contact.py
#Variables  ../TestCases/TestSuite1.robot
Resource      ../TestCases/TestSuite1.robot
Library  DateTime

*** Variables ***

${Contact_Tab}    Id=Contact_Tab
${New_Button}     name=new
${Salutation_C}    Id=name_salutationcon2
${SpouseName_C}    Id=00Nf4000009here
${Mailing_Address_Street}    Id=con19street
${Continue/Save}    name=save
${FirstName_Contact}    Id=name_firstcon2
${LastName_Contact}    Id=name_lastcon2
${Deceased_Checkbox}    Id=00Nf4000009heqK
${Mailing_City}     Id=con19city
${Mailing_state}    Id=con19state
${Mailing_Zip}    Id=con19zip
${Mailing_Country}    Id=con19country
${Mailing_Address_Type}    Id=00Nf4000009her8
${Do Not Mail_Checkbox}    Id=00Nf4000009hepq
${Mail_Opt-Out}    Id=00Nf4000009her7
${MAil_Opt_Out_Date}    Id=00Nf4000009her6
${Email}          Id=con15
${Email_Status}    Id=00Nf4000009hep
${Don Not Email}        Id=00Nf4000009hepp
${Email_Opt_Out_Date}    Id=00Nf4000009hepw
${BirthDay}       Id=00Nf4000009hepb
${BirthMonth}     Id=00Nf4000009hepc
${BirthYear}      Id=00Nf4000009hepd
${BirthDateElement}        xpath=.//*[@id='con7']
${Head_of_Household}    Id=00Nf4000009heqM
${Description}    xpath=.//*[@id='con20_ileinner']
${Preffered_Phone}      Id=00Nf4000009herR
${Primary_Phone}    Id=con10
${Mobile_Phone}    Id=con12
${Continue}     xpath=.//*[@id='bottomButtonRow']/input[1]
${Contact_Name2}    xpath=.//*[@id='con2_ileinner']
${Account_Name2}    xpath=.//*[@id='con4_ileinner']




*** Keywords ***
Contact Creation
    Wait Until Element Is Visible    ${Contact_Tab}
    Click Element    ${Contact_Tab}
    Wait Until Element Is Visible    ${New_Button}
    Click Button    ${New_Button}
    Set Selenium Implicit Wait    20s
    Click Element    ${Continue}
    Set Selenium Implicit Wait    10s
    Set Selenium Speed    .10s
    Input Text    ${FirstName_Contact}   ${FirstName}
    Input Text    ${LastName_Contact}   ${LastName}
    Input Text    ${SpouseName_C}     ${SpouseName}
    @{Salu}=    Get List Items    ${Salutation_C}
    Select From List By Value    ${Salutation_C}    @{Salu}[2]
    Click Element    ${Deceased_Checkbox}
    Input Text    ${Mailing_Address_Street}    ${Mail_Street}
    Input Text    ${Mailing_City}    ${Mail_City}
    Input Text    ${Mailing_Country}    ${Mail_Country}
    Input Text    ${Mailing_state}    ${Mail_State}
    Input Text    ${Mailing_Zip}    ${Mail_Code}
    Click Element    ${Do Not Mail_Checkbox}
    Input Text    ${Email}    ${Contact_Email}
    Set Selenium Implicit Wait  5s
    Input Text      ${BirthDateElement}      ${Birth_Date}
    Click Element    ${Continue/Save}

Contact Field Verification
    ${contactName}=    Get Text    ${Contact_Name2}
    Set Global Variable    ${contactName}
    ${AccountName}=    Get Text    ${Account_Name2}
    Set Global Variable    ${AccountName}
    ${Cont_PreviousEmail}=    Get Text    xpath=.//*[@id='con15_ileinner']
    Set Global Variable    ${Cont_PreviousEmail}

Drag and Drop function

