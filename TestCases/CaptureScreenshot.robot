*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
Capture Screenshot
    open browser    https://www.saucedemo.com/      chrome
    maximize browser window

    #capture element screenshot    xpath://div[@class='login_credentials_wrap-inner']    C:/Users/surya/PycharmProjects/PythonProject/Screenshot1.png
    #capture page screenshot    C:/Users/surya/PycharmProjects/PythonProject/Screenshot2.png

    capture element screenshot    xpath://div[@class='login_credentials_wrap-inner']    screenshot3.png
    capture page screenshot    screenshot4.png