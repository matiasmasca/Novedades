# encoding: utf-8
Dado(/^que tengo (\d+) (?:casos|caso)$/) do |cantidad_casos, table|
  # table is a Cucumber::Ast::Table
  @proyects = Project.create!(table.hashes)
  assert_equal cantidad_casos.to_i, @proyects.count
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
  page.has_table?('projects-list') #Que este la tabla
  page.assert_selector('table tbody tr', :count => 0 )
end
