*** Settings ***
Documentation           This suite will handle valid credentials
Resource  ../Resource/commonfunctionality.resource

Test Setup   Link Browser
Test Teardown   Close Browser

Test Template      Valid Credential Template

*** Test Cases ***

TC1   ram10@gmail.com      Ram@10    valid credentials


*** Keywords ***
Valid Credential Template
     [Arguments]  ${email}  ${password}      ${excepted}
     Click Element    xpath=//a[contains(text(),'Sign In')]
     Input Text   id=email    ${email}
     Input Password    id=pass    ${password}