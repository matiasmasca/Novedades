# encoding: utf-8
Dado(/^que este caso tiene (\d+) novedades$/) do |news_count, table|
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
