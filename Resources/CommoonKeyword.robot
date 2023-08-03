*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Open My Browser
#to open a site you need the url of the site and a browser
    [Arguments]    ${site_URL}      ${browser}
#ouveture du navigateur avec le lien du site
    Open Browser    ${site_URL}     ${browser}
#to maximaze window after open
    Maximize Browser Window