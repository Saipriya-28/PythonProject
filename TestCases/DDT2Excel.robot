*** Settings ***
Library    SeleniumLibrary
Resource   ../Resources/Login_resources.robot
Library    DataDriver   ../TestData/Logindata.xlsx  sheetname=Sheet1
Suite Setup       Open my browser
Suite Teardown    close my browser
Test Template     Invalid credentials

*** Test Cases ***
LoginTestWithExcel using ${username} ${password}

*** Keywords ***
Invalid credentials
    [Arguments]    ${username}  ${password}
    Input username  ${username}
    Input pwd       ${password}
    click on login button
    Error message should be visible