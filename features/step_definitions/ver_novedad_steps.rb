# encoding: utf-8
Dado(/^que he seleccionado el proyecto "(.*?)"$/) do |nombre_proyecto|
  step %{que tengo un proyecto llamado "#{nombre_proyecto}"}
  step %{estoy en la pantalla donde veo "Mis proyectos"}
  step %{que el proyecto tiene 1 novedad}, table(%{
   | title                     | message                                     | project_id | date       |
   | Mockups disponibles | Puede ver y validar los bosquejos de la interfaz grafica | 1          | 01/09/2014 |
  })
  step %{seleccionó "Ver novedades"}

end

Dado(/^que he seleccionado la novedad "(.*?)"$/) do |arg1|
  step %{seleccionó "Ver más"}
end

Entonces(/^veo el titulo "(.*?)"$/) do |titulo|
   step %{veo un mensaje "#{titulo}"}
end

Entonces(/^el mensaje "(.*?)"$/) do |mensaje|
  step %{veo un mensaje "#{mensaje}"}
end

Entonces(/^la fecha "(.*?)"$/) do |fecha|
  #save_and_open_page
  #date = Date.parse fecha
  step %{veo un mensaje "#{fecha}"}
end

Entonces(/^veo la imagen en la pantalla$/) do
  pending # express the regexp above with the code you wish you had
end

Dado(/^deseo descargarlo$/) do
  pending # express the regexp above with the code you wish you had
end

Entonces(/^preciono el botón "(.*?)"$/) do |arg1, table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end

Entonces(/^veo el archivo descargado$/) do
  pending # express the regexp above with the code you wish you had
end

Dado(/^deseo descargarlos$/) do
  pending # express the regexp above with the code you wish you had
end

Entonces(/^hay (\d+) botones para "(.*?)"$/) do |arg1, arg2, table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end

Entonces(/^descargo los (\d+) archivos$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Entonces(/^veo los archivos descargados$/) do
  pending # express the regexp above with the code you wish you had
end
