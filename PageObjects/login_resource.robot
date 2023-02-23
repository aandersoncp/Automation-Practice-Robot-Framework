*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN_NOME}             //input[contains(@type,'text')]
${LOGIN_EMAIL}            //input[contains(@data-qa,'signup-email')]

*** Keywords ***
Adicionar Texto Nome "${TEXTO}"
    Input Text    locator=${LOGIN_NOME}    text=${TEXTO}
    
Adicionar Texto Email "${TEXTO}"
    Input Text    locator=${LOGIN_EMAIL}    text=${TEXTO}

    

