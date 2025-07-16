*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}      https://www.saucedemo.com/
${browser}      chrome
*** Test Cases ***
TC2
    launchbrowser   ${url}  ${browser}
    input text    id:user-name  standard_user
    input text    id:password   secret_sauce
*** Keywords ***
launchbrowser
    [Arguments]    ${appurl}    ${appbrowser}
    open browser    ${appurl}  ${appbrowser}
    maximize browser window