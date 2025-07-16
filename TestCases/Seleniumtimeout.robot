*** Settings ***
Library    SeleniumLibrary
*** Variables ***
*** Test Cases ***
TestSeleniumTimeout

       open browser    https://demowebshop.tricentis.com/register    chrome
       maximize browser window
       ${speed} =   get selenium timeout
       log to console    ${speed}
       wait until page contains    Register
       set selenium timeout    6seconds
       select radio button    Gender    F
       input text    name:FirstName     Vupperla
       input text    name:LastName      Saipriya
       input text    name:Email     saipriya@gmail.com
       input text    name:Password  saipriya@28
       input text    name:ConfirmPassword   saipriya@28
       ${speed} =   get selenium timeout
       log to console    ${speed}
*** Keywords ***
