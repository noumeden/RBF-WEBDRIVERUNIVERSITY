*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Home_pages.robot
Resource    ../Resources/Button_click_locator.robot
Resource    ../Resources/Button_clickkeyword_locator.robot

*** Variables ***



*** Test Cases ***
test of Button clicks
    Open Home Page
    Click On BUTTON CLICKS
    Switch Window    NEW
    Get Title After Click On BUTTON CLICKS
test contain1
    Test Contain1
    Sleep    4
test contain2
    Open Home Page
    Click On BUTTON CLICKS
    Switch Window    NEW
    Test Contain2
    Sleep    4
test contain3
    Open Home Page
    Click On BUTTON CLICKS
    Switch Window    NEW
    Test Contain3
    Close My Browser


*** Keywords ***
