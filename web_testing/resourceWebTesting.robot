*** Settings ***
Documentation           Resource com as implementações das KWs da suiteWebTesting 
Library                 SeleniumLibrary

*** Variables ***
${URL}    http://automationpractice.com

*** Keywords ***
Abrir o Navegador
    Open Browser        browser=chrome

## -- teardown
Fechar o Navegador
    Close Browser

## -- steps
Acessar a página home do site Automation Practice
    Go To    ${URL}
    Wait Until Element Is Visible    xpath=//img[contains(@class,'logo img-responsive')]

Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Input Text    id=search_query_top    ${PRODUTO}

Clicar no botão pesquisar
    Click Button    name=submit_search

Conferir se o produto "${PRODUTO}" foi listado no site
    Wait Until Element Is Visible    xpath=(//a[@class='product-name'][contains(.,'${PRODUTO}')])[2]

Adicionar o produto "${PRODUTO}" no carrinho
    Mouse Over       xpath=(//a[@class='product-name'][contains(.,'${PRODUTO}')])[2]
    Click Element    xpath=//span[contains(.,'Add to cart')]
    Wait Until Element Is Visible    xpath=//span[contains(.,'Proceed to checkout')]
    Click Element    xpath=//span[contains(.,'Proceed to checkout')]

Conferir se o produto "${PRODUTO}" foi adicionado no carrinho
    Wait Until Element Is Visible    xpath=(//a[contains(.,'${PRODUTO}')])[4]

Conferir mensagem "No results were found for your search "${PRODUTO}""
    Wait Until Element Is Visible    xpath=//p[@class='alert alert-warning'][contains(.,'No results were found for your search "${PRODUTO}"')]

Passar o mouse por cima da categoria "${CATEGORIA}" no menu principal superior de categorias
    Mouse Over    xpath=//a[contains(@title,'${CATEGORIA}')]

Clicar na sub categoria "${SUBCATEGORIA}"
    Click Element    xpath=(//a[@href='http://automationpractice.com/index.php?id_category=11&controller=category'][contains(.,'${SUBCATEGORIA}')])[1]

Conferir se os produtos da sub-categoria "${SUBCATEGORIA}" foram mostrados na página
    Wait Until Element Is Visible    xpath=//span[@class='cat-name'][contains(.,'${SUBCATEGORIA}')]

Clicar em "${CATEGORIA}"
    IF  '${CATEGORIA}' == 'Sign in'
        Click Element    xpath=//a[@class='login'][contains(.,'${CATEGORIA}')]
    ELSE
        Click Element    xpath=//span[contains(.,'${CATEGORIA}')]
    END

Informar um e-mail válido
    Input Text    id=email_create    leandroalrodrigues@gmail.com

Preencher os dados obrigatórios
    Sleep    5s
    Wait Until Element Is Visible    xpath=//h3[@class='page-subheading'][contains(.,'Your personal information')]
    Input Text    id=customer_firstname    Leandro
    Input Text    id=customer_lastname     Rodrigues
    Input Text    id=email                 papainoel62333@uorak.com
    Input Text    id=passwd                12345
    Input Text    id=passwd                12345
    Input Text    id=firstname             Endereço
    Input Text    id=lastname              Comercial
    Input Text    id=address1              Avenida Brasil
    Input Text    id=city                  Curitiba
    Select From List By Index    id_state    9
    Input Text    id=postcode              00000
    Select From List By Index    id_country    1
    Input Text    id=other                  123456
    Input Text    id=phone                 123456789
    Input Text    id=phone_mobile          123456789
    Input Text    id=alias                 Alias teste

Submeter cadastro
    Click Element    xpath=//span[contains(.,'Register')]

Conferir se o cadastro foi efetuado com sucesso
    Sleep    5s
    Wait Until Element Is Visible    xpath=//p[@class='info-account'][contains(.,'Welcome to your account. Here you can manage all of your personal information and orders.')]
