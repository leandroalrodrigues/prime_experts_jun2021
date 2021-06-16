*** Settings ***
Documentation           Teste para IFs - Tomada de decisões !

*** Variables ***
@{PAISES}    Argentina    Uruguai    Brasil    Chile    Brasil    Bolívia    Brasil

*** Test Cases ***
Teste de Ifs
    Imprimir apenas país Brasil

*** Keywords ***
Imprimir apenas país Brasil
    Log To Console  ${\n}
    FOR    ${pais}    IN    @{PAISES}
        IF    '${pais}' == 'Brasil'
            Log To Console    opa !! Deu Brasil !
        ELSE
            Log To Console    Ahh ! ${pais} não é Brasil  !
        END
       
    END
    