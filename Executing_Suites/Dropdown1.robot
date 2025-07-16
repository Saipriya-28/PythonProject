*** Settings ***
Library    SeleniumLibrary
*** Variables ***

*** Test Cases ***

TestingInputBox
      open browser    https://www.tutorialspoint.com/selenium/practice/selenium_automation_practice.php    chrome
      maximize browser window
      #set selenium speed    2seconds
      select from list by label    state    Haryana
      select from list by index    state    4
      close all browsers

*** Keywords ***