*** Settings ***
Library     SeleniumLibrary
*** Variables ***
*** Test Cases ***
Handling Alerts
    open browser    https://testautomationpractice.blogspot.com/    chrome
    maximize browser window
    scroll element into view    xpath://h2[text()='Mouse Hover']
    sleep    1
    click element    id:confirmBtn
    sleep   3
    handle alert    accept
    #handle alert    dismiss
    #handle alert    leavez
    sleep    2
    close all browsers

*** Keywords ***
