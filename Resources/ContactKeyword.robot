*** Settings ***
Library    SeleniumLibrary
Variables    ../PagesObjects/contactLocators.py

*** Keywords ***
Enter Firstname
    [Arguments]    ${firstname}
    Wait Until Element Is Visible       ${txt_firstname_login}
    Element Should Be Enabled       ${txt_firstname_login}
    Input Text        ${txt_firstname_login}          ${firstname}
Enter Lastname
    [Arguments]    ${lastname}
    Wait Until Element Is Visible       ${txt_lastname}
    Input Text    ${txt_lastname}       ${lastname}

Enter Email
    [Arguments]    ${email}
    Wait Until Element Is Visible       ${txt_email}
    Input Text      ${txt_email}        ${email}

Enter Comments
    [Arguments]    ${comment}
    Input Text    ${txt_area_comments}          ${comment}

Validate Message
    [Arguments]    ${message_sucess}
    Wait Until Element Is Visible    ${txt_message_success}
    Element Should Be Visible       ${txt_message_success}
    Element Should Contain       ${txt_message_success}            ${message_sucess}

Click Submit Button
    Wait Until Element Is Visible    ${btn_contact_submit_button}
    Element Should Be Visible    ${btn_contact_submit_button}
    Click Element    ${btn_contact_submit_button}
    Sleep    2

Click Reset Button
        Wait Until Element Is Visible    ${btn_contact_reset_button}
        Element Should Be Visible    ${btn_contact_reset_button}
        Click Element    ${btn_contact_reset_button}

Click on Contact Us Button
    Wait Until Element Is Visible       ${btn_contact_us}
    Click Element    ${btn_contact_us}