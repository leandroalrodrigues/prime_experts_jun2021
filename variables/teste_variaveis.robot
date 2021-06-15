*** Settings ***
Documentation           Meu teste de variaveis

*** Variables ***
${MENSAGEM}             Hello World !!
&{PESSOA}                nome=Leandro    sobrenome=Rodrigues    idade=38
@{FRUTAS}                banana    maça    laranja

*** Test Cases ***
Meu teste de impressão de mensagem no terminal
    Logar no meu terminal uma mensagem

Meu teste imprimindo um dicionário de Pessoa
    Logar no meu terminal uma PESSOA

Meu teste imprimindo uma lista de frutas
    Logar no meu terminal uma LISTA DE FRUTAS

*** Keywords ***
Logar no meu terminal uma mensagem
    Log To Console     ${\n}
    Log To Console     ${MENSAGEM}
    
Logar no meu terminal uma PESSOA
    Log To Console     ${PESSOA.nome} ${PESSOA.sobrenome} ${PESSOA.idade} anos !
    
Logar no meu terminal uma LISTA DE FRUTAS
    ## declarando localmente uma nova variavel 
    ${outra_fruta}     Set Variable     abacaxi
    ## declaro uma nova variavel para o escopo do teste
    Set Test Variable  ${nova_fruta}      morango
    Log To Console     ${\n}
    Log To Console     ${FRUTAS} ${nova_fruta}
    Log Many           ${FRUTAS}
    Log To Console     ${nova_fruta} ${outra_fruta}
    Log To Console     ${FRUTAS[0]}
    Log To Console     ${FRUTAS[1]}
    Log To Console     ${FRUTAS[2]}
