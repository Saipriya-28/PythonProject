*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}      https://www.saucedemo.com/
${browser}      chrome

*** Keywords ***
Open my browser
    open browser    ${url}      ${browser}
    maximize browser window
close my browser
    close all browsers

open login page
    go to    ${url}

Input username
    [Arguments]    ${username}
    input text    id:user-name      ${username}
Input pwd
    [Arguments]    ${password}
    input text    id:password       ${password}

#standard_user
#    input text      id:password  standard_user

click on login button
    click element    id:login-button
Error message should be visible
    page should contain    Username and password do not match
Products page should be visible
    page should contain    Products