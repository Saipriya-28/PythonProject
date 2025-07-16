*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${Url}      https://www.saucedemo.com/
${Browser}  chrome

*** Test Cases ***
Login test
    open my browser    ${Url}   ${Browser}
    enter Username    standard_user
    enter Password    secret_sauce
    click on login button
    verify home page
    close my browsers