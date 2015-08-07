class Notification < ActiveRecord::Base
  belongs_to :project, inverse_of: :notifications, autosave: true

  has_many :attachments, inverse_of: :notification, dependent: :destroy

  #accepts_attachments_for :attachments, append: true

  def archivos_adjuntos
    archivos_adjuntos = Attachment.where(notification_id: self.id).count
  end

  def fecha
    #Para que salga con el formato de ARG
    fecha = Date.parse(self.date.to_s)
    fecha.strftime('%d/%m/%Y')
  end

  def mark_as_read!(marca)
    self.update_attributes! :read_mark => marca
  end
end
