# encoding: utf-8
Dado(/^que soy cliente registrado$/) do
end

Dado(/^(?:que estoy identificado|que estoy logueado) como? "(.*?)"$/) do |tipo|
  if tipo == "cliente"
    step %{existe un Usuario: "DeRoche", "don@deroche.com", "clave12345" y "1"}
    step %{completo mi email "don@deroche.com" y contraseña "clave12345"}
  end
end

Dado(/^me identifico como "(.*?)"$/) do |usuario|
  step %{existe un Usuario: "DeRoche", "#{usuario}", "clave12345" y "1"}
  #step %{completo mi email "#{usuario}" y contraseña "clave12345"}
end

Dado(/^que el usuario esta "(.*?)"$/) do |estado|
  if estado == "habilitado"
    estado_usuario = true
  else
    estado_usuario = false
  end
  @user.habilitado = estado_usuario
  @user.save!
  step %{completo mi email "don@deroche.com" y contraseña "clave12345"}
end

Entonces(/^veo un mensaje que dice "(.*?)"$/) do |mensaje|
 #Capybara Quering, sin RSpec.
 assert page.has_content?(mensaje)
end

Dado(/^existe un Usuario: "(.*?)", "(.*?)", "(.*?)" y "(.*?)"$/) do |nombre, email, clave, tipo|
    @user = User.create!({
    :nombre => nombre,
    :email => email,
    :password => clave,
    :password_confirmation => clave,
    :tipo => tipo,
    :habilitado => true
    })
end

Dado(/^completo mi email "(.*?)" y contraseña "(.*?)"$/) do |correo, clave|
  #visit '/users/sign_out'
  visit '/users/sign_in'
  # Esto es para evitar el Ambiguous match
  fill_in("Usuario", with: "#{correo}", :match => :prefer_exact)
  fill_in("Clave", with: "#{clave}", :match => :prefer_exact)
  click_button 'Ingresar'
end
