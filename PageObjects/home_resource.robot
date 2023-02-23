*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL_BASE}               http://automationexercise.com
${BOTAO_HOME}             //a[contains(.,'Home')]
${TITULO_PAGINA_LOGIN}    //h2[contains(.,'New User Signup!')]
${LOGIN_NOME}             //input[contains(@type,'text')]
${LOGIN_EMAIL}            //input[contains(@data-qa,'signup-email')]

*** Keywords ***

Clicar botao "${NOME_BOTAO}"
    Click Element    locator=//a[contains(.,'${NOME_BOTAO}')]
    Wait Until Element Is Visible    locator=${TITULO_PAGINA_LOGIN}

    

