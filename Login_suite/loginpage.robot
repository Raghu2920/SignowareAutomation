*** Settings ***
Library   SeleniumLibrary
Library     OperatingSystem

Resource  ../Resource/commonfunctionality.resource

Test Setup   Link Browser

*** Test Cases ***
TC1
    Append To Environment Variable    path       ${EXECDIR}${/}Driver
    Maximize Browser Window
    Open Browser    url=https://signoraware.com/           browser=chrome
    Click Element    xpath=//a[contains(text(),'Sign In')]
    Input Text    id=email   ram10@gmail.com
    Input Password    id=pass    Ram@1234
    Click Element    xpath=//span[text()='Sign In']