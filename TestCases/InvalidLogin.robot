*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/resources.robot
Resource    ../Resources/LoginKeyword.robot
Resource    ../Resources/Home_pages.robot
Test Template    Login With Invalid Credentials Should Fail

*** Variables ***
${fail_alert_login}          validation failed

*** Test Cases ***                 USER NAME               PASSWORD
Invalid Username                   invalid                 ${VALID PASSWORD}
Invalid Password                   ${VALID PASSWORD}        invalid
Invalid Username And Password      invalid                  whatever
Empty Username                      ${EMPTY}                ${VALID PASSWORD}
Empty Password                      ${VALID USER}           ${EMPTY}
Empty Username And Password         ${EMPTY}                ${EMPTY}


*** Keywords ***
Login With Invalid Credentials Should Fail
    [Arguments]    ${user_name}     ${pass_word}
    Open My Browser    ${BASE_URL}      ${browser_home_page}
    Click To LOGIN PORTAL Button
    Switch Window        New
    Enter Username    ${user_name}
    Enter Passwork    ${pass_word}
    Click On Login Button
    Alert Message       ${fail_alert_login}
    Close My Browser
