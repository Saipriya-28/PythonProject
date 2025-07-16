*** Settings ***
Library    SeleniumLibrary
Resource   ../Resources/Login_resources.robot
Library    DataDriver   ../TestData/test.csv
Suite Setup       Open my browser
Suite Teardown    close my browser
Test Template     Invalid credentials

*** Test Cases ***
LoginTestWithCSV using username and password

*** Keywords ***
Invalid credentials
    [Arguments]    ${username}  ${password}
    Input username  ${username}
    Input pwd       ${password}
    click on login button
    Error message should be visible