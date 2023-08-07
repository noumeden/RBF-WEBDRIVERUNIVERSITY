*** Settings ***
Library    SeleniumLibrary
Variables    ../PagesObjects/Button_clicks.py

*** Variables ***
${main_title}    Lets Get Clicking!
${title_contain1}   WebElement Click
${title_contain2}   JavaScript Click
${title_contain3}   Action Move & Click


*** Keywords ***
Click On BUTTON CLICKS
    Wait Until Element Is Visible    ${btn_button_clicks}
    Click Element   ${btn_button_clicks}

Get Title After Click on BUTTON CLICKS
    Page Should Contain    ${main_title}

Get Title
    [Arguments]    ${titre_de_page}
    Page Should Contain    ${titre_de_page}

Click on contains Element
    [Arguments]    ${btn_element}
    Click Element   ${btn_element}

Verify Alert message
    [Arguments]    ${alert_message
    ${cutrent_alert}=       Handle Alert    accept
    #Should Be Equal         ${cutrent_alert}       ${alert_message

Test contain1
    Get Title   ${title_contain1}
    Wait Until Element Is Visible    ${btn_contain_1}
    Click on contains Element    ${btn_contain_1}
    Wait Until Element Is Visible       ${btn_alert1}
    Click On Contains Element        ${btn_alert1}
    Sleep    4

Test contain2
    Get Title   ${title_contain2}
    Wait Until Element Is Visible    ${btn_contain_2}
    Click on contains Element    ${btn_contain_2}
    Wait Until Element Is Visible       ${btn_alert2}
    Click On Contains Element     ${btn_alert2}

Test contain3
    Get Title   ${title_contain3}
    Wait Until Element Is Visible    ${btn_contain_3}
    Click On Contains Element    ${btn_contain_3}

    Wait Until Element Is Visible       ${btn_alert3}
    Click Element    ${btn_alert3}