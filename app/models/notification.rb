class Notification < ActiveRecord::Base
  belongs_to :project, inverse_of: :notifications, autosave: true

  has_many :attachment, inverse_of: :notifications, dependent: :destroy

  #accepts_attachments_for :attachments, append: true

  def archivos_adjuntos
    archivos_adjuntos = Attachment.where(notification_id: self.id).count
  end
end
