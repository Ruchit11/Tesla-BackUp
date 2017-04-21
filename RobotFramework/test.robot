*** Settings ***

Library  Selenium2Library
Library  SCREEN1/Custom.py

*** Variables ***

${CREDENTIALS}  key:secret

*** Keywords ***


*** Test Cases ***

Simple Test

    open browser  http://teslaqa2.spa.comcast.net  chrome
    Maximize Browser Window

    Enter Your Name

    Username

    #Todo list
     ${file2}=  capture page screenshot

    Input text  username  qacode_t2_2
    Input text  password  test
    click button  Login

    #mouse over  id=profile-img medium
    Click Element  id=omni-search

    Table Row Should Contain  omni-search-helpers  1  Account Number
    Table Row Should Contain  omni-search-helpers  2  ZIP Code
    Table Row Should Contain  omni-search-helpers  3  Dropped Call
    Table Row Should Contain  omni-search-helpers  4  fn:: ln::
    Table Row Should Contain  omni-search-helpers  5  ih::
    Table Row Should Contain  omni-search-helpers  6  MAC Address
    Table Row Should Contain  omni-search-helpers  7  Telephone Number
    Table Row Should Contain  omni-search-helpers  8  User ID


    click element  dock-handle

    #Click element  Id=calendar

    #click element  xpath=//div[@id="add-customer"]/span
    #click image  id=profile-img

    #Click Link  xpath=/div[@id="non-sub-form-dialog"]/div[1]/span[2]

    set selenium speed  1s
    ${file4}=  capture page screenshot
    click image  id=profile-img
    click element  xpath=//div[@id="profile-img-popup"]/div[2]/ul[2]/li



#//*[@id="non-sub-form-dialog"]/div[1]/span[2]
    Close all Browsers
