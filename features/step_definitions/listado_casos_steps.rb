# encoding: utf-8
Dado(/^que estoy identificado como "(.*?)"$/) do |tipo|
  if tipo == "cliente"
    step %{existe un Usuario: "DeRoche", "don@deroche.com", "clave12345" y "1"}
    step %{completo mi email "don@deroche.com" y contraseña "clave12345"}
  end
end

Dado(/^que tengo (\d+) casos$/) do |cantidad_casos, table|
  # table is a Cucumber::Ast::Table
  # Cantidad de Casos, no se usa en esta prueba, es un dato simbolico. Lo que importa es la tabla.
  @proyects = Project.create!(table.hashes)
  #save_and_open_page
end

Entonces(/^veo un listado con (\d+) casos$/) do |cantidad_casos|
  #save_and_open_page
  page.has_table?('projects-list') #Que este la tabla
  page.assert_selector('table tbody tr', :count => cantidad_casos ) #Que tenga X filas. OJO esto puede fallar con filas vacias.
end

Dado(/^que no tengo casos$/) do|table|
  # table is a Cucumber::Ast::Table
  @proyects = nil
end

Entonces(/^veo un listado vacios\.$/) do
  pending # express the regexp above with the code you wish you had
end
