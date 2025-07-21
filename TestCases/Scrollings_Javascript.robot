*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
Scrolling Actions
    open browser    https://testautomationpractice.blogspot.com/    chrome
    maximize browser window
    sleep    2
    #execute javascript    window.scrollTo(0,2500)
    #scroll element into view    xpath://h2[text()='Mouse Hover']
    execute javascript    window.scrollTo(0,document.body.scrollHeight)
    sleep    3
    execute javascript    window.scrollTo(0,-document.body.scrollHeight)