*** Settings ***
*** Test Cases ***
TC1 User Registrationtest
    [Tags]    regression
    log to console    This is user reg test
    log to console    User reg is over
TC2 LoginTest
    [Tags]    sanity
    log to console    This is login test
    log to console    Login test is over
TC3 Change user settings
    [Tags]    regression
    log to console    This is change user settings test
    log to console    Changing user settings is over
TC4 Logout Test
    [Tags]    sanity
    log to console    This is logout test
    log to console    Logout is over