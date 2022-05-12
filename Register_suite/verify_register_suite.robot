*** Settings ***
Documentation       This suite will create a new account
Resource       ../Resource/commonfunctionality.resource

Test Setup      Link Browser
Test Teardown   Close Browser

Test Template    verify valid register

*** Test Cases ***
TC1     Ram      R       ram10@gmail.com     Ram@10

*** Keywords ***
verify valid register
    [Arguments]   ${username}   ${lastname}    ${email_id}   ${password}
     Click Element    xpath=//a[contains(text(),'Sign In')]
     Click Element    link=Create an Account
     Input Text    id=firstname   ${username}
     Input Text    id=lastname    ${lastname}
     Input Text    id=email_address    ${email_id}
     Input Password    id=password    ${password}
     Input Password    id=password-confirmation   ${password}
     Click Element    id=assistance_allowed_checkbox
     Click Element    xpath=//span[text()="Create an Account"]