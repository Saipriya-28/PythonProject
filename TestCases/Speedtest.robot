*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***

TestingInputBox
       open browser    https://demowebshop.tricentis.com/register    chrome
       maximize browser window
       ${speed} =   get selenium speed
       log to console    ${speed}
       set selenium speed    2seconds
       select radio button    Gender    F
       input text    name:FirstName     Vupperla
       input text    name:LastName      Saipriya
       input text    name:Email     saipriya@gmail.com
       input text    name:Password  saipriya@28
       input text    name:ConfirmPassword   saipriya@28
       ${speed} =   get selenium speed
       log to console    ${speed}

*** Keywords ***