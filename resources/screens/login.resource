*** Settings ***
Documentation     Elementos e ações da tela de login

Library           AppiumLibrary

*** Variables ***
${API_IP}    #IP do servidor de testes

*** Keywords ***
Do Login
    
    Input Text      xpath=//*[@resource-id="apiIp"]         ${API_IP}
    Click Element   xpath=//*[@resource-id="signInButton"]