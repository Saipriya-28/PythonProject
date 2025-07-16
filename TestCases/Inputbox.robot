*** Settings ***
Library  SeleniumLibrary


*** Variables ***


*** Test Cases ***

TestingInputBox
       open browser  https://www.saucedemo.com/  chrome
       maximize browser window
       title should be  Swag Labs
       ${"username"}     set variable    id:user-name
       element should be visible  ${"username"}
       element should be enabled  ${"username"}
       #element should not be visible    ${"username"}
       input text   ${"username"}  standard_user
       sleep  5
       clear element text  ${"username"}
       sleep  3
       close browser



*** Keywords ***