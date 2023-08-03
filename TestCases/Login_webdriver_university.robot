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

*** Test Cases ***
Login to login portal webdriver university
    Open Home Page
    Click To LOGIN PORTAL Button
    Switch Window    New
    ${curent_url} =  Execute Javascript  return window.location.href
    Should Be Equal As Strings      ${curent_url}       ${URL_login-webdriver}
    Enter Username      ${username}
    Enter Passwork      ${password}
    Sleep    2
    Click On Login Button
    Close My Browser
