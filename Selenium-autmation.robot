*** Setting ***
Library   String
Library   SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${homepage}     automationpractice.com/index.php
${scheme}      http
${testUrl}     ${scheme}://${homepage}

*** keywords ***
Open Homepage
    Open Browser    ${testurl}      ${browser}

*** Test case ***
C001 Hacer Click en contenedores
    Open Homepage
    Set Global Variable     @{nombresDeContenedores}     //*[@id="homefeatured"]/li[1]/div/div[2]/h5/a     //*[@id="homefeatured"]/li[2]/div/div[2]/h5/a   //*[@id="homefeatured"]/li[3]/div/div[2]/h5/a   //*[@id="homefeatured"]/li[4]/div/div[2]/h5/a   //*[@id="homefeatured"]/li[5]/div/div[2]/h5/a   //*[@id="homefeatured"]/li[6]/div/div[2]/h5/a   //*[@id="homefeatured"]/li[7]/div/div[2]/h5/a
    FOR    ${nombreDeContenedor}   IN      @{nombresDeContenedores}
    Click Element       xpath=${nombreDecontenedor}
    Wait Until Element Is Visible   xpath=//*[@id="bigpic"]
    Click Element   xpath=//*[@id="header_logo"]/a/img
    END
    Close Browser

C002 Nuevo Caso de Prueba
    Open Homepage