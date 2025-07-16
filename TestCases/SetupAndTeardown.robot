*** Settings ***


Suite Setup    log to console   Opening browser
Suite Teardown    log to console    Closing browser

Test Setup    log to console    Login to application
Task Teardown    log to console     Logout to application

*** Test Cases ***
TC1 Prepaid recharge
    log to console    This is prepaid recharge testcase
TC2 Postpaid recharge
    log to console    This is postpaid recharge testcase
TC3 Search
    log to console    This is search testcase
TC4 Advanced search
    log to console    This is adv search testcase
