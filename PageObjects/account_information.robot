*** Settings ***
Library    SeleniumLibrary
Resource   .\variaveis\variaveis.robot

*** Variables ***
# ${RADIO_BUTTON_MR}       //label[@for='id_gender1'][contains(.,'Mr.')]
# ${PASSWORD}              //input[contains(@type,'password')]
# ${SELECT_DAY}            //select[contains(@data-qa,'days')]
# ${DAY}                   //option[@value='12'][contains(.,'12')]
# ${SELECT_MONTH}          //select[contains(@data-qa,'months')]
# ${MONTH}                 //option[@value='7'][contains(.,'July')]
# ${SELECT_YEAR}           //select[contains(@data-qa,'years')]
# ${YEAR}                  //option[@value='2000'][contains(.,'2000')]
# ${CHECKBOX_NEWSLETTER}   //input[contains(@name,'newsletter')]
# ${CHECKBOX_RECEIVE}      //input[contains(@name,'optin')]
# ${FIRST_NAME}            //input[contains(@data-qa,'first_name')]
# ${LAST_NAME}             //input[contains(@data-qa,'last_name')]
# ${COMPANY}               //input[contains(@data-qa,'company')]
# ${ADDRESS}               //input[@data-qa='address']
# ${SELECT_COUNTRY}        //select[contains(@data-qa,'country')]
# ${COUNTRY}               //option[@value='Canada'][contains(.,'Canada')]         
# ${STATE}                //input[contains(@data-qa,'state')]
# ${CITY}                  //input[contains(@data-qa,'city')]
# ${ZIPCODE}               //input[contains(@data-qa,'zipcode')]
# ${MOBILE_NUMER}          //input[@type='text'][contains(@id,'number')] 
# ${BOTAO_CREATE_ACCOUNT}  //button[@type='submit'][contains(.,'Create Account')]
# ${ACCOUNT_CREATED}       //b[contains(.,'Account Created!')]
# ${BOTAO_CONTINUE}        //a[contains(@data-qa,'continue-button')]
# # ${NOME}                  nome_teste


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

Preencher first name
    Input Text    locator=${FIRST_NAME}    text=First_Name

Preencher last name
    Input Text    locator=${LAST_NAME}    text=Last_Name 

Preencher company
    Input Text    locator=${COMPANY}    text=Test_company

Preencher address
    Input Text    locator=${ADDRESS}    text=Test Street 

Preencher country
    Click Element    locator=${SELECT_COUNTRY}
    Click Element    locator=${COUNTRY}

Preencher status
    Input Text    locator=${STATE}    text=British Columbia

Preencher city    
    Input Text    locator=${CITY}    text=Vancouver

Preencher zipcode
    Input Text    locator=${ZIPCODE}    text=13216454

Preencher mobile number
    Input Text    locator=${MOBILE_NUMER}    text=21321316546

Preencher formulario
    Preencher radio button title
    Preencher senha
    Preencher data de nascimento
    Preencher checkbox
    Preencher first name
    Preencher last name
    Preencher company
    Preencher address
    Preencher country
    Preencher status
    Preencher city    
    Preencher zipcode
    Preencher mobile number

Clicar botao create account
    Click Button    locator=${BOTAO_CREATE_ACCOUNT}
    Wait Until Element Is Visible    locator=${ACCOUNT_CREATED}

Clicar botao continue
    Click Element    locator=${BOTAO_CONTINUE}
    Wait Until Element Is Visible    locator=//a[contains(.,'Logged in as ${NOME}')]