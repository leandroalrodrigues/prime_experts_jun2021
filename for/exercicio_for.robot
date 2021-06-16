*** Settings ***
Documentation           Exercicio (FOR)

*** Variables ***
@{PAISES}    Brasil    Argentina    Chile    Uruguai    Bolívia

*** Test Cases ***
Teste de contar de 0 a 10
    Imprimir intervalo     0     10

Teste de imprimir a lista de países
    Imprimir uma lista

*** Keywords ***
Imprimir intervalo 
    [Arguments]    ${A}    ${B}
    FOR    ${numero}    IN RANGE     ${A}      ${B}+1   
        Log To Console    Estou no número: ${numero} 
    END

Imprimir uma lista
    FOR    ${pais}    IN    @{PAISES}
        Log To Console    País: ${pais}
       
    END