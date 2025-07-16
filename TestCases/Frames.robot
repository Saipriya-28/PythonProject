*** Settings ***
Library     SeleniumLibrary
*** Variables ***
*** Test Cases ***
Handling Frames
    open browser    https://www.tutorialspoint.com/selenium/practice/frames.php     chrome
    maximize browser window
    select frame    Iframe 1
    ${text} =   get text    Selenium - Automation Practice Form
    log to console  ${text}
    sleep    2

    select frame    Iframe 2
    ${text1}=   get text    Selenium - Automation Practice Form
    log to console    ${text1}
    sleep    1

    close browser

*** Keywords ***
