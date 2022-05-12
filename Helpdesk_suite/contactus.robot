*** Settings ***

Documentation       This suite will reach out to the helpdesk

Resource        ../Resource/commonfunctionality.resource


Test Setup      Link Browser
Test Teardown       Close Browser

*** Test Cases ***
Contact Us Template
        Click Element    link=Sign In
        Input Text    id=email   ram10@gmail.com
        Input Password    id=pass     Ram@1234
        Click Element    id=send2

        Click Element    partial link=Contact Us
        Input Text    id=telephone    1234567890
        Input Text    id=comment    The product which i am looking is not available.
        Click Element    xpath=//span[text()="Send Message"]
        Element Text Should Be    xpath=//div[contains(text(),'Thanks for contacting')]    Thanks for contacting us with your comments and questions. We'll respond to you very soon.