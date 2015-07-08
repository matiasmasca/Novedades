# encoding: utf-8
Dado(/^que (?:este|el) caso tiene (\d+) (?:novedades|novedad)$/) do |news_count, table|
  # table is a Cucumber::Ast::Table
  @notifications = Notification.create!(table.hashes)
  assert_equal news_count.to_i, @notifications.count
end

Entonces(/^veo una etiqueta de colores que identifica que el caso tiene (\d+) novedades$/) do |news_count|
  step %{estoy en la pantalla donde veo "Mis casos"}
  page.has_table?('projects-list') #Que este la tabla
  #projects-list > tbody:nth-child(2) > tr:nth-child(1) > td:nth-child(3) > span:nth-child(1)
  news = page.find('table tbody tr span').text
  assert_equal news_count, news #MiniTest assert_equal 'expected', 'actual'
end


Dado(/^que he seleccionado "(.*?)" del caso "(.*?)"$/) do |accion, caso|
  if caso == "DeRoche vs Pepe Argento"
    step %{que tengo un caso llamado "#{caso}"}
  end

  if accion == "Ver novedades"
    click_on("Ver novedades")
  end
end

#To-DO: refactorizar este paso.
Entonces(/^veo un listado con las (\d+) novedades$/) do |count|
  notifications = page.all('table#notifications-list tbody tr').count
  assert_equal count.to_i, notifications
end

#Entonces(/^veo un listado con las novedades$/) do
#  page.has_table?('notifications-list') #Que este la tabla
#  news = page.all('table#notifications-list tr').count
#  assert news > 0
#end

Entonces(/^debo ver "(.*?)" antes que "(.*?)"$/) do |cadena1, cadena2|
  #regexp = /#{cadena1}.*#{cadena2}/m # /m means match across newlines
  #page.body.should =~ regexp #Esto necesita que este definido should
  # match = /#{cadena1}.*#{cadena2}/m =~ page.body #Esto no me funcionaba.
  assert page.body.index(cadena1) < page.body.index(cadena2)
end

Dado(/^que el caso no tiene novedades$/) do |table|
  # table is a Cucumber::Ast::Table
  @notifications = Notification.destroy_all
  visit('/notifications')
end

Entonces(/^veo el listado de novedades vacio$/) do
  #save_and_open_page
  page.has_table?('notifications-list') #Que este la tabla
  page.assert_selector('table tbody tr', :count => 0 )
end
