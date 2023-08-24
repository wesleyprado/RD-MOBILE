# frozen_string_literal: true

class RegisterPage
  def initialize
    # ---------------------- screen elements ----------------------
    @fldName = {android: 'com.example.vamsi.login:id/etRegName', ios: ''}
    @fldPhone = {android: 'com.example.vamsi.login:id/etRegPhone', ios: ''}
    @fldEmail = {android: 'com.example.vamsi.login:id/etRegGmail', ios: ''}
    @fldPassword = {android: 'com.example.vamsi.login:id/etRegPassword', ios: ''}
    @btnRegister = {android: 'com.example.vamsi.login:id/btnRegLogin', ios: ''}
    @btnLogin = {android: 'com.example.vamsi.login:id/btnGotoLogin', ios: ''}
  end

  attr_accessor :fldName, :fldPhone, :fldEmail, :fldPassword, :btnRegister, :btnLogin

  def register(usuario, senha)
    find_element(:id, fldName[$platform]).send_keys(DATA['USER']["newUser"]['name'])
    find_element(:id, fldPhone[$platform]).send_keys(DATA['USER']["newUser"]['phone'])
    find_element(:id, fldEmail[$platform]).send_keys(usuario)
    find_element(:id, fldPassword[$platform]).send_keys(senha)
    find_element(:id, btnRegister[$platform]).click
    find_element(:id, btnLogin[$platform]).click
    sleep(2)
  end
end