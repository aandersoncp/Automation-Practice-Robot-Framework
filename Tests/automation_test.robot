*** Settings ***
Resource        ../PageObjects/automation_resource.robot
Resource        ../PageObjects/home_resource.robot
Resource        ../PageObjects/login_resource.robot
Test Setup      Abrir navegador
#Test Teardown  Fechar navegador

*** Variables ***


*** Test Cases ***
Cenario 01: Registrar usuario
    Acessar pagina inicial
    Clicar botao "Signup / Login"
    Adicionar Texto Nome "nome_teste"
    Adicionar Texto Email "nome_teste@tese.com"
    