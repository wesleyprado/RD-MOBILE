# frozen_string_literal: true

class LoginPage
  def initialize
    # ---------------------- screen elements ----------------------
    @signUpTextView = {android: 'com.example.vamsi.login:id/action_bar', ios: ''}
    @fldEmail = {android: 'com.example.vamsi.login:id/etLogGmail', ios: ''}
    @fldPassword = {android: 'com.example.vamsi.login:id/etLoginPassword', ios: ''}
    @btnLogin = {android: 'com.example.vamsi.login:id/btnLogin', ios: ''}
    @btnNewuser = {android: 'com.example.vamsi.login:id/tvRegister', ios: ''}
    @alert = {android: "//android.widget.Toast", ios: ''}
  end

  attr_accessor :signUpTextView, :fldEmail, :fldPassword, :btnLogin, :btnNewuser, :alert

  def loginCheck
    sleep(1)
    welcome = find_element(:id, signUpTextView[$platform]).text
    welcome.include?('Login')
  end
  
  def loginSucesso(usuario, senha)
    find_element(:id, fldEmail[$platform]).send_keys(usuario)
    find_element(:id, fldPassword[$platform]).send_keys(senha)
    find_element(:id, btnLogin[$platform]).click
  end

  def loginFalho
    find_element(:id, fldEmail[$platform]).send_keys("usuario")
    find_element(:id, fldPassword[$platform]).send_keys("senha")
    find_element(:id, btnLogin[$platform]).click
  end

  def register
    find_element(:id, btnNewuser[$platform]).click
    sleep(1)
  end

  def checkError
    text = find_element(:xpath, alert[$platform]).text
    return text
  end
end