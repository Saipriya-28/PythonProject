*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
Mouse Actions
    #Right click
    open browser    http://swisnl.github.io/jQuery-contextMenu/demo.html    chrome
    maximize browser window
    open context menu    xpath://span[@class='context-menu-one btn btn-neutral']
    sleep    3

    #Double click
    go to    https://testautomationpractice.blogspot.com/
    maximize browser window
    double click element    xpath://button[text()='Copy Text']
    sleep    3

    #drag and drop
    go to    https://testautomationpractice.blogspot.com/
    maximize browser window
    drag and drop    id:draggable   id:droppable
    sleep    2

    close all browsers
