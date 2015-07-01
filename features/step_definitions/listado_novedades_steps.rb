# encoding: utf-8
Dado(/^que (?:este|el) caso tiene (\d+) (?:novedades|novedad)$/) do |news_count, table|
  # table is a Cucumber::Ast::Table
  @news = New.create!(table.hashes)
  assert_equal news_count.to_i, @news.count
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
  # save_and_open_page

  if accion == "Ver novedades"
    click_on("Ver novedades")
  end
end

Entonces(/^veo un listado con las (\d+) novedades$/) do |count|
  news = page.all('table#news-list tbody tr').count
  assert_equal count.to_i, news
end

Entonces(/^veo un listado ordenado cronologicamente$/) do |expected_table|
  # table is a Cucumber::Ast::Table
  rows = find("table#news-list").all('tr')
  table = rows.map { |r| r.all('th,td').map { |c| c.text.strip } }
  puts table
  #expected_table.diff!(table)
  #TO-DO hacer que coincidan las tablas
end

Dado(/^que el caso no tiene novedades$/) do |table|
  # table is a Cucumber::Ast::Table
  @news = nil
  visit('/news')
end

Entonces(/^veo el listado de novedades vacio$/) do
  #save_and_open_page
  page.has_table?('news-list') #Que este la tabla
  page.assert_selector('table tbody tr', :count => 0 )
end
