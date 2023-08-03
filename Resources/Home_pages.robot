*** Settings ***
Library    SeleniumLibrary
Resource    ./LoginKeyword.robot

*** Variables ***
${BASE_URL}     http://www.webdriveruniversity.com/
${browser_home_page}    Chrome


*** Keywords ***
Open Home Page
    Open My Browser    ${BASE_URL}      ${browser_home_page}



