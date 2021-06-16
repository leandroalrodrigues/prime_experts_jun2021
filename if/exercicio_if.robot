*** Settings ***
Documentation           Exercicio IFs - Tomada de decisões !

*** Test Cases ***
Teste de imprimir alguns números
    Imprimir somente se for 5 e 8 

*** Keywords ***
Imprimir somente se for 5 e 8
    Log To Console  ${\n}
    FOR    ${counter}    IN RANGE   0    11
        IF    ${counter} == 5 or ${counter} == 8
              Log To Console    Estou no número: ${counter}
        END
      
    END
    