# encoding: utf-8


Dado(/^que estoy identificado como "(.*?)"$/) do |tipo|
  if tipo == "cliente"
    step %{existe un Usuario: "DeRoche", "don@deroche.com", "clave12345" y "1"}
    step %{completo mi email "don@deroche.com" y contraseña "clave12345"}
  end
end
