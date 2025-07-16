*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/resources.robot
*** Variables ***
${url}      https://www.saucedemo.com/
${browser}      chrome
*** Test Cases ***
TC3
    ${pagetitle}    launchbrowser   ${url}  ${browser}
    log to console    ${pagetitle}
    log    ${pagetitle}
    input text    id:user-name  standard_user
    input text    id:password   secret_sauce
