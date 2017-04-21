*** Settings ***
Library  OperatingSystem

*** Variables ***
${MESSAGE}    Hello, world!
${TEXT}    world is colorful!

*** Test Cases ***
My Test
       [Documentation]    Example test
       Log    ${MESSAGE}

Another Test
    [Documentation]    Example test1
    should be equal  ${MESSAGE}  Hello, world!

Third Test
    [Documentation]   Example test3
    should be equal      ${TEXT}  world is colorful!
