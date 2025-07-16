*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}      https://www.saucedemo.com/
${browser}      chrome
*** Test Cases ***
TC1
    launchbrowser
    input text    id:user-name  standard_user
    input text    id:password   secret_sauce
*** Keywords ***
launchbrowser
    open browser    ${url}  ${browser}
    maximize browser window
