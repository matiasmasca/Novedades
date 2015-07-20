crumb :root do
  link "Inicio", root_path
end

 crumb :projects do
   link "Casos", projects_path
 end

 crumb :project do |project|
   link project.name, project_path(project)
   parent :projects
 end

 crumb :project_notifications do |project|
   link "Novedades", project_notifications_path(project)
   parent :project, project
 end

 crumb :notification do |notification|
   link notification.title, notification_path(notification)
   parent :project_notifications, notification.project
 end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).
