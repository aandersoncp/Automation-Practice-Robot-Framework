*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL_BASE}         http://automationexercise.com
${BOTAO_HOME}        //a[contains(.,'Home')]

*** Keywords ***
Abrir navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar navegador
    Close Browser

Acessar pagina inicial
    Go To    url=${URL_BASE}
    Wait Until Element Is Visible    locator=${BOTAO_HOME}

    

