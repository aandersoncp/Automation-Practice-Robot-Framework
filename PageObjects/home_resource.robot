*** Settings ***
Library    SeleniumLibrary
Resource   .\variaveis\variaveis.robot

*** Variables ***
# ${BOTAO_HOME}            //a[contains(.,'Home')]
# ${BOTAO_SIGNUP_LOGIN}    //a[contains(.,'Signup / Login')]
# ${TITULO_PAGINA_LOGIN}   //h2[contains(.,'Login to your account')] 
# ${DELETE_BUTTON}         //a[contains(.,'Delete Account')]

*** Keywords ***

Clicar botao Signup/Login
    Click Element    locator=${BOTAO_SIGNUP_LOGIN}
    Wait Until Element Is Visible    locator=${TITULO_PAGINA_LOGIN}

Clicar em delete
    Click Element    locator=${DELETE_BUTTON}
    Wait Until Element Is Visible    locator=//b[contains(.,'Account Deleted!')]
    Click Element    locator=//a[contains(@data-qa,'continue-button')]
    Title Should Be    title=Automation Exercise

    

