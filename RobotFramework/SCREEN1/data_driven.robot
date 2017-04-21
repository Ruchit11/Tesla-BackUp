*** Settings ***
Documentation    Suite description

Test Template     Calculate
Library           CalculatorLibrary.py
Library  Selenium2Library


*** Test Cases ***    Expression    Expected
Addition              12 + 2 + 2    16
                      2 + -3        -1

Subtraction           12 - 2 - 2    8
                      2 - -3        5

Multiplication        12 * 2 * 2    48
                      2 * -3        -6

Division              12 / 2 / 2    3
                      2 / -3        -1

Failing               1 + 1         2

Calculation error     [Template]    Calculation should fail
                      kekkonen      Invalid button 'k'.
                      ${EMPTY}      Invalid expression.
                      1 / 0         Division by zero.

*** Keywords ***
Calculate
    [Arguments]    ${expression}    ${expected}
    Push buttons    C${expression}=
    Result should be    ${expected}

Calculation should fail
    [Arguments]    ${expression}    ${expected}
    ${error} =    Should cause error    C${expression}=
    Should be equal    ${expected}    ${error}    # Using `BuiltIn` keyword