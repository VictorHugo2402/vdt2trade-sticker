*** Settings ***
Documentation        Login Tests

Resource    ../resources/main.resource

Test Setup        Start Test
Test Teardown     Finish Test

*** Test Cases ***
Deve logar com sucesso
    Go To Login Page
    Submit Credencials    papito@gmail.com    vaibrasil
    User Logged In

Nao deve logar com senha invalida
  Go To Login Page
  Submit Credencials         papito@gmail.com    abc123
  Toast Message Should Be    Credenciais inválidas, tente novamente!

Deve exibir notificacao toaster se a senha nao for preenchida
    Go To Login Page
    Fill Text                  css= input[name=email]       papito@gmail.com
    Click                      css=button >> text=Entrar
    Toast Message Should Be    Por favor, informe a sua senha secreta!

Deve exibir notificacao toaster se o email nao for preenchido
    Go To Login Page
    Fill Text                  css= input[name=password]       papito@gmail.com
    Click                      css=button >> text=Entrar
    Toast Message Should Be    Por favor, informe o seu email!

Deve exibir notificacao toaster se o email e a senha nao forem preenchidos
    Go To Login Page
    Click                      css=button >> text=Entrar
    Toast Message Should Be    Por favor, informe suas credenciais!
        




 
