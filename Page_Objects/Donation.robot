*** Settings ***
Documentation    Suite description
Documentation    Suite description
Library     Selenium2Library
Library     ../CustomLibrary/DonationLibrary.py
Resource      ../TestCases/TestSuite1.robot

*** Variables ***
${Donation_Name}    Id=opp3
${Donor}          Id=CF00Nf4000009heuH
${Stage}          Id=opp11
${Amount}         Id=opp7
${CloseDate}      Id=opp9
${Type}           Id=opp5
${SourceCode}     Id=00Nf4000009hevN
${Opportunity_Tab}    xpath=.//*[@id='Opportunity_Tab']/a
${Continue}     xpath=.//*[@id='bottomButtonRow']/input[1]



*** Keywords ***
Donation Creation
    Click Element    ${Opportunity_Tab}
    Click Element    ${New_Button}
    Set Selenium Implicit Wait    20s
    Click Element    ${Continue}
    Input Text    ${Donation_Name}    ${Don_Name}
    Input Text    ${Amount}    ${Don_Amt}
    Input Text    ${SourceCode}    ${Don_Sourcecode}
    Input Text    ${Donor}    ${Don_Donor}
    @{Stage1}=    Get List Items    ${Stage}
    Select From List By Value    ${Stage}    @{Stage1}[4]
    @{Type1}=    Get List Items    ${Type}
    Select From List By Value    ${Type}    @{Type1}[1]
    Input Text    ${CloseDate}    ${Don_Date}
    Click Link    xpath=.//*[@id='ep']/div[2]/div[3]/table/tbody/tr[7]/td[2]/div/span/span/a
    Click Element    ${Continue/Save}
    #Verify the ODP Contact