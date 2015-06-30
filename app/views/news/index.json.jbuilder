json.array!(@news) do |news|
  json.extract! news, :id, :project_id, :title, :date, :message
  json.url news_url(news, format: :json)
end
