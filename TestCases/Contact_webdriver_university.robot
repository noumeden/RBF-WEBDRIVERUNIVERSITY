*** Settings ***
Library    SeleniumLibrary
#Resource    ../Resources/LoginKeyword.robot
Resource    ../Resources/Home_pages.robot
Resource    ../Resources/ContactKeyword.robot

*** Variables ***
${URL_contact_us}       http://www.webdriveruniversity.com/Contact-Us/contactus.html
${browser}      Chome
${first_name}   "jerome"
${last_name}     "dongmo"
${Email}        dongmo@gmail.com
${commentaire}   "mon commentaire"
${message_sucess}     Thank You for your Message!

*** Test Cases ***
Contact US Webdriveruniversity
    Open Home Page
    Click On Contact Us Button
    Switch Window    New
    Enter Firstname    ${first_name}
    Enter Lastname     ${last_name}
    Enter Email        ${Email}
    Enter Comments      ${commentaire}
    Click Submit Button
    Validate Message        ${message_sucess}

