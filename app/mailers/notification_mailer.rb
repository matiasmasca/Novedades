class NotificationMailer < ApplicationMailer
  default from: 'contacto@terciar.ga'

  def new_notification_email(project)
    @customer = User.find(project.customer_id)
    @project = project
    @notification = @project.notifications.last
    @url  = "http://terciar-novedades.herokuapp.com/projects/#{@project.id}/notifications/#{@notification.id}"
    @url_dev  = "http://0.0.0.0:3000/projects/#{@project.id}/notifications/#{@notification.id}"
    mail(to: @customer.email, subject: 'Tiene una novedad en su caso')
  end

end
