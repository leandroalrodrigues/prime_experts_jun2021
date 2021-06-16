*** Settings ***
Documentation           Exercicio de argumentos e retornos

*** Variables ***
&{DADOS}    nome=leandro    sobrenome=rodrigues    idade=38

*** Test Cases ***
Testar a criação de e-mails
    ${email}    Criar e-mail    ${DADOS.nome}    ${DADOS.sobrenome}    ${DADOS.idade}
    Log To Console    O email formado é: ${email}

*** Keywords ***
Criar e-mail
    [Arguments]    ${nome}    ${sobrenome}    ${idade}
    [Return]    ${nome}_${sobrenome}_${idade}@robot.com