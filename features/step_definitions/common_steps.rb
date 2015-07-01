# encoding: utf-8
# # save_and_open_page
Dado(/^(?:estoy en la pantalla|estoy en la pantalla donde veo|que estoy en la pantalla de)? "(.*?)"$/) do |pantalla|
  case pantalla
  when 'Mis casos'
    visit('/projects')
  when 'las novedades'
    visit('/novedades')
  else
    visit('/¿A donde queres ir?')
  end
end

#De Ver novedades.
Dado(/^que tengo un caso llamado "(.*?)"$/) do |nombre_caso|
  @project = Project.create!({
  :name => nombre_caso,
  :customer_id => 1
  })
end

Dado(/^seleccionó "(.*?)"$/) do |opcion|
  if opcion == "Ver novedades"
    click_on("Ver novedades")
  end
end

Entonces(/^veo un listado con las novedades$/) do
  page.has_table?('news-list') #Que este la tabla
  news = page.all('table#news-list tr').count
  assert news > 0
end

## De VER novedades
Dado(/^que he seleccionado el caso "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Dado(/^que he seleccionado la novedad "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Dado(/^que la novedad tiene (\d+) adjunto$/) do |arg1, table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end

Entonces(/^veo el "(.*?)" y la "(.*?)"$/) do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
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

#Pa los mensajes de error.
#Then /^I should see an error message containing "([^\"]*)"$/ do |message|
#    page.should have_selector('#flash_alert', text: message)
#end
