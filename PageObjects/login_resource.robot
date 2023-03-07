*** Settings ***
Library    SeleniumLibrary
Library    Builtin
Resource   .\variaveis\variaveis.robot

*** Variables ***
# ${LOGIN_NOME}          //input[contains(@type,'text')]
# ${LOGIN_EMAIL}         //input[contains(@data-qa,'signup-email')]
# ${BOTAO_SIGNUP}        //button[@type='submit'][contains(.,'Signup')]
# ${TITULO_ENTER_ACCOUNT_INFORMATION}    //b[contains(.,'Enter Account Information')]

*** Keywords ***
Adicionar Texto Nome "${NOME}"
    Set Global Variable    ${NOME}
    Input Text    locator=${LOGIN_NOME}    text=${NOME}
    
Adicionar Texto Email "${TEXTO}"
    Input Text    locator=${LOGIN_EMAIL}    text=${TEXTO}

Clicar botao Signup
    Click Button    locator=${BOTAO_SIGNUP}
    Wait Until Element Is Visible    locator=${TITULO_ENTER_ACCOUNT_INFORMATION}  
