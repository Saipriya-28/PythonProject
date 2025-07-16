*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py

*** Keywords ***
open my browser
    [Arguments]    ${Url}   ${Browser}
    open browser    ${Url}  ${Browser}
    maximize browser window
enter Username
    [Arguments]     ${username}
    input text    ${txt_LoginUsername}  ${username}
enter Password
    [Arguments]    ${password}
    input text    ${txt_password}   ${password}
click on login button
    click button    ${btn_login}
verify home page
    title should be    Swag Labs
close my browsers
    close all browsers
