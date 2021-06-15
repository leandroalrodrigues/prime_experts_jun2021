*** Settings ***
Documentation           Exercicio variaveis

*** Variables ***
&{PESSOA}                nome=Leandro    sobrenome=Rodrigues    idade=38    
...                      sexo=Masculino    Profissao=Analista   mae=Doroti
@{FRUTAS}                banana    maça    morango   abacaxi  mamão

*** Test Cases ***
Teste que imprime os dados da PESSOA
    Imprimir no console os dados da pessoa

Teste que imprime todas as 5 frutas
    Imprimir no console as frutas

*** Keywords ***
Imprimir no console os dados da PESSOA
    Log To Console     ${\n} 
    Log To Console     ${PESSOA.nome}  
    Log To Console     ${PESSOA.sobrenome} 
    Log To Console     ${PESSOA.idade}  
    Log To Console     ${PESSOA.sexo}  
    Log To Console     ${PESSOA.Profissao}  
    Log To Console     ${PESSOA.mae}  
    
Imprimir no console as frutas
    Log To Console     ${\n} 
    Log To Console     Fruta 0: ${FRUTAS}[0] 
    Log To Console     Fruta 1: ${FRUTAS}[1] 
    Log To Console     Fruta 2: ${FRUTAS}[2] 
    Log To Console     Fruta 3: ${FRUTAS}[3] 
    Log To Console     Fruta 4: ${FRUTAS}[4] 
