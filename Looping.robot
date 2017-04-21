*** Settings ***
Documentation    Suite description
Library  String
Library  Selenium2Library

*** Test Cases ***
For Loop with Upper Bound Range
    [Documentation]  This gives us a 0 based range
    :FOR  ${Index}  IN Range  5
    \  Do Something  ${Index}
    \  ${Random_String} =  Generate random string  ${Index}
    \  Log  ${Random_String}

FOR Loop with Start and Finish Range
    [Documentation]  No longer a 0 based range because I provided start
    :FOR  ${Index}  IN Range  1  4
    \  Do Something  ${Index}
    \  ${Random_String}  Generate Random String  ${Index}



Test title


