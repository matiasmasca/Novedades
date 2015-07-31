class NotificationMailer < ApplicationMailer
  default from: 'contacto@terciar.ga'

  def new_notifition_email(project)
    @customer = User.find(project.customer_id)
    @project = project
    @url  = "terciar-novedades.herokuapp.com/projects/#{@project.id}/notifications/"
    mail(to: @customer.email, subject: 'Tiene una novedad en su caso')
  end

end
