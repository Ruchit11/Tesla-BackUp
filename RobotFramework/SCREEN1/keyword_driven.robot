*** Settings ***
Documentation    Suite description

Library  CalculatorLibrary.py
Library  Selenium2Library

*** Test Cases ***
Push button
    Push button    1
    Result should be    1

Push multiple buttons
    Push button    1
    Push button    2
    Result should be    12

Simple calculation
    Push button    1
    Push button    +
    Push button    2
    Push button    =
    Result should be    3



Longer calculation
    Push buttons    5 + 4 - 3 * 2 / 1 =
    Result should be  3

Clear
    Push button    1
    Push button    C

    Result should be    ${EMPTY}    # ${EMPTY} is a built-in variable