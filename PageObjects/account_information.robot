*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${RADIO_BUTTON_MR}       //label[@for='id_gender1'][contains(.,'Mr.')]
${PASSWORD}              //input[contains(@type,'password')]
${SELECT_DAY}            //select[contains(@data-qa,'days')]
${DAY}                   //option[@value='12'][contains(.,'12')]
${SELECT_MONTH}          //select[contains(@data-qa,'months')]
${MONTH}                 //option[@value='7'][contains(.,'July')]
${SELECT_YEAR}           //select[contains(@data-qa,'years')]
${YEAR}                  //option[@value='2000'][contains(.,'2000')]
${CHECKBOX_NEWSLETTER}   //input[contains(@name,'newsletter')]
${CHECKBOX_RECEIVE}      //input[contains(@name,'optin')]

*** Keywords ***

Preencher radio button title
    Click Element    locator=${RADIO_BUTTON_MR}
    Radio Button Should Be Set To    group_name=title    value=Mr  

Preencher senha
    Input Password    locator=${PASSWORD}    password=teste123456

Preencher data de nascimento
    Click Element    locator=${SELECT_DAY}
    Click Element    locator=${DAY}
    Click Element    locator=${SELECT_MONTH}
    Click Element    locator=${MONTH}
    Click Element    locator=${SELECT_YEAR}
    Click Element    locator=${YEAR}
    Capture Page Screenshot

Preencher checkbox 
    Select Checkbox    locator=${CHECKBOX_NEWSLETTER}
    Select Checkbox    locator=${CHECKBOX_RECEIVE}
