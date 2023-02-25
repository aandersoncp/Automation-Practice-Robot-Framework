*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BOTAO_HOME}            //a[contains(.,'Home')]
${BOTAO_SIGNUP_LOGIN}    //a[contains(.,'Signup / Login')]
${TITULO_PAGINA_LOGIN}   //h2[contains(.,'Login to your account')] 

*** Keywords ***

Clicar botao Signup/Login
    Click Element    locator=${BOTAO_SIGNUP_LOGIN}
    Wait Until Element Is Visible    locator=${TITULO_PAGINA_LOGIN}

    

