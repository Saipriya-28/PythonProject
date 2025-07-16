*** Settings ***
Library           SeleniumLibrary
Resource          ../Resources/Login_resources.robot
Suite Setup       Open my browser
Suite Teardown    close my browser
Test Template     Invalid credentials

*** Test Cases ***             username         password
Right user empty password      standard_user    ${EMPTY}
Right user wrong password      standard_user    abc
Wrong user right password      standard         secret_sauce
Wrong user empty password      abc              ${EMPTY}
Wrong user wrong password      xyz               aght
Wrong user wrong password      cxy               right

*** Keywords ***
Invalid credentials
    [Arguments]    ${username}    ${password}
    Input username    ${username}
    Sleep            2s
    Input pwd         ${password}
    Click on login button
    Error message should be visible
