*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/LoginKeyword.robot
Resource    ../Resources/Home_pages.robot
Resource    ../Resources/CommoonKeyword.robot


*** Variables ***
${browser_type}     Chrome
${URL_login-webdriver}      http://www.webdriveruniversity.com/Login-Portal/index.html
${username}         webdriver
${password}         webdriver123
${success_alert_login}       validation succeeded

*** Test Cases ***
Login to login portal webdriver university
    Open Home Page
    Click To LOGIN PORTAL Button
    Switch Window    New
    Enter Username      ${username}
    Enter Passwork    ${password}
    Click On Login Button
    Alert Message       ${success_alert_login}
