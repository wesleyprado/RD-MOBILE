#language: pt
#encoding: UTF-8
@login
Funcionalidade: Login no app

  @login_sucesso
  Cenario: Criar novo usuário e logar com sucesso
    Dado que esteja no login do sistema
    Quando clico para me registrar
    E preencho todos os campos corretamente
    Então devo ser capaz de logar com o usuário criado

  @login_erro
  Cenario: Logar com usuário inexistente
    Dado que esteja no login do sistema
    Quando informo os dados de um usuário inexistente
    Então o sistema me mostra uma mensagem de erro