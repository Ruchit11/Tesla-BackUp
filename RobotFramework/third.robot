*** Variables ***
${BROWSER}  ie
${BROWSER1}  chrome
*** Settings ***
Library  Selenium2Library
Suite Teardown  Close all browsers

*** Test Cases ***
Example
    Open browser  http://bbcnews.com  chrome

    open browser  http://bbcnews.com  ff



    close browser