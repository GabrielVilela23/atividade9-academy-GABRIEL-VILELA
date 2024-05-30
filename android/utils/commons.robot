*** Settings ***

Resource    ../base.robot

*** Keywords ***

Aguarda clique elemento
    [Arguments]    ${elemento}
    Wait Until Element Is Visible    ${elemento}
    Click Element    ${elemento}

Checa se elementos estao visiveis
    [Arguments]    @{elementos}
    FOR    ${elemento}    IN    @{elementos}
        Element Should Be Visible    ${elemento}
    END

Checa se elementos estao habilitados
    [Arguments]    @{elementos}
    FOR    ${elemento}    IN    @{elementos}
        ${attr}    AppiumLibrary.Get Element Attribute    ${elemento}    enabled
        Should Be Equal    ${attr}    true
    END

Aguarda elemento para fazer o input de texto
    [Arguments]    ${elemento}    ${texto}
    Wait Until Element Is Visible    ${elemento}
    Input Text                       ${elemento}    ${texto}