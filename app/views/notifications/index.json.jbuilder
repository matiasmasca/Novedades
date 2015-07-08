json.array!(@notifications) do |notification|
  json.extract! notification, :id, :project_id, :title, :date, :message
  json.url notification_url(notification, format: :json)
end
