*** Settings ***
Library  SeleniumLibrary


*** Variables ***


*** Test Cases ***

LoginTest
       open browser  https://www.saucedemo.com/  chrome
       input text   id:user-name  standard_user
       input text   id:password   secret_sauce
       click element  id:login-button
       close browser


*** Keywords ***
