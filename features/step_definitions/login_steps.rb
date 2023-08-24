Dado('que esteja no login do sistema') do
  @login.loginCheck
end

Quando('clico para me registrar') do
  @login.register
end

Quando('preencho todos os campos corretamente') do
  @usuario = generateFakeEmail
  @senha = generatePassword
  @register.register(@usuario, @senha)
end

Quando('informo os dados de um usuário inexistente') do
  @login.loginFalho
end

Então('o sistema me mostra uma mensagem de erro') do
  expect(@login.checkError).to eq('Login error')
end

Então('devo ser capaz de logar com o usuário criado') do
  @login.loginSucesso(@usuario, @senha)
end