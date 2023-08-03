*** Settings ***
Library    SeleniumLibrary
Variables    ../PagesObjects/LoginLocators.py

*** Variables ***




*** Keywords ***
Open My Browser
#to open a site you need the url of the site and a browser
    [Arguments]    ${site_URL}      ${browser}
#ouveture du navigateur avec le lien du site
    Open Browser    ${site_URL}     ${browser}
#to maximaze window after open
    Maximize Browser Window


Close My Browser
#fermeture de tous les navigateurs
    Close All Browsers

Click to LOGIN PORTAL Button
    Wait Until Element Is Visible       ${btn_login_portal}
    Click Element   ${btn_login_portal}

Enter Username
    [Arguments]    ${user_name}
    Wait Until Element Is Enabled      ${txt_username_login}
    Input Text    ${txt_username_login}     ${user_name}

Enter Passwork
    [Arguments]    ${password}
    Wait Until Element Is Enabled    ${txt_password_login}
    Input Text    ${txt_password_login}     ${password}

Click On Login Button
    Wait Until Element Is Visible       ${btn_login_login}
    Element Should Be Enabled        ${btn_login_login}
    Click Element    ${btn_login_login}
    Handle Alert        accept


