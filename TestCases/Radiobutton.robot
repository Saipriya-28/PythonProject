*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***

TestingInputBox
       open browser    https://www.tutorialspoint.com/selenium/practice/selenium_automation_practice.php    chrome
       maximize browser window
       set selenium speed    2seconds
       click element        (//input[@type='radio'])[2]
       click element        (//input[@type='checkbox'])[1]
       select checkbox      (//input[@type='checkbox'])[2]
       unselect checkbox    (//input[@type='checkbox'])[2]

*** Keywords ***
