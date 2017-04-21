*** Settings ***
Documentation   This is some basic info about some whole suite
Library  Selenium2Library

*** Variables ***


*** Test Cases ***

User must sign in to check out
    [Documentation]  This is some basic information about the test
    [Tags]  Smoke
    Open Browser  http://www.amazon.com  ff



    Click Element  id=nav-signin-tooltip

    Input Text  ap_email  chokshiruchit@yahoo.com

    ${file3}=  Capture Page Screenshot
    Input Text  ap_password  ruchit1234

    Set Selenium Speed	.5 seconds
    click Element  id=signInSubmit
    click Element  id=nav-cart-count

    Click Link  css=#nav-your-amazon
    Click Image


    ${file2}=  Capture Page Screenshots


    sleep  5s
    close browser



*** Keywords ***
