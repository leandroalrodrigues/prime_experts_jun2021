*** Settings ***
Documentation           Exercicio variaveis

*** Variables ***
&{PESSOA}                nome=Leandro    sobrenome=Rodrigues    idade=38    
...                      sexo=Masculino    Profissao=Analista   mae=Doroti

*** Test Cases ***
Teste que imprime os dados da PESSOA
    Imprimir no console os dados da pessoa

*** Keywords ***
Imprimir no console os dados da PESSOA
    Log To Console     ${\n} 
    Log To Console     ${PESSOA.nome}  
    Log To Console     ${PESSOA.sobrenome} 
    Log To Console     ${PESSOA.idade}  
    Log To Console     ${PESSOA.sexo}  
    Log To Console     ${PESSOA.Profissao}  
    Log To Console     ${PESSOA.mae}  
    
