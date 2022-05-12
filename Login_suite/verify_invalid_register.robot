*** Settings ***
Documentation           This suite will handle Invalid credentials

Resource   ../Resource/commonfunctionality.resource
Test Setup   Link Browser
Test Teardown   Close Browser

Test Template      InValid Credential Template


*** Test Cases ***
TC1   ram123@gmail.com   qwerty    invalid credentials
TC2   roninrey@gmail.com     rey123   invalid credentials
TC3   abi10@gmail.com       abi@2420    invalid credentials

*** Keywords ***
 InValid Credential Template
     [Arguments]  ${email}  ${password}      ${excepted}
     Click Element    xpath=//a[contains(text(),'Sign In')]
     Input Text   id=email    ${email}
     Input Password    id=pass    ${password}