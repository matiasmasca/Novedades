# encoding: utf-8
# # save_and_open_page
Entonces(/^veo un mensaje "(.*?)"$/) do |mensaje|
  #Capybara Quering, sin RSpec. Usa MiniTest.
  assert page.has_content?(mensaje)
end

Dado(/^(?:estoy en la pantalla|estoy en la pantalla donde veo|que estoy en la pantalla de)? "(.*?)"$/) do |pantalla|
  case pantalla
  when 'Mis casos'
    visit('/projects')
  when 'las novedades'
    visit('/notifications')
  else
    visit('/¿A donde queres ir?')
  end
end

#De Ver novedades.
Dado(/^que tengo un caso llamado "(.*?)"$/) do |nombre_caso|
  @project = Project.create!({
  :name => nombre_caso,
  :user_id => 1
  })
end

Dado(/^seleccionó "(.*?)"$/) do |opcion|
  case opcion
  when 'Ver novedades'
    click_on("Ver novedades")
  when 'Ver más'
    click_on("Ver más")
  else
    visit('/¿A donde queres ir?')
  end
end



## De VER novedades

Entonces(/^mostrame la pagina$/) do
  save_and_open_page
end



#Pa los mensajes de error.
#Then /^I should see an error message containing "([^\"]*)"$/ do |message|
#    page.should have_selector('#flash_alert', text: message)
#end
