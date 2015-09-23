# encoding: utf-8
Dado(/^que tengo (\d+) (?:proyectos|proyecto)$/) do |cantidad_proyectos, table|
  # table is a Cucumber::Ast::Table
  @proyects = Project.create!(table.hashes)
  assert_equal cantidad_proyectos.to_i, @proyects.count
end

Entonces(/^veo un listado con (\d+) proyectos$/) do |cantidad_proyectos|
  page.has_table?('projects-list') #Que exista la tabla
  page.assert_selector('table tbody tr', :count => cantidad_proyectos ) #Que tenga X filas. OJO esto puede fallar con filas vacias.
end

Dado(/^que no tengo proyectos$/) do|table|
  # table is a Cucumber::Ast::Table
  @proyects = nil
end

Entonces(/^veo un listado vacios\.$/) do
  page.has_table?('projects-list') #Que exista la tabla
  page.assert_selector('table tbody tr', :count => 0 )
end
