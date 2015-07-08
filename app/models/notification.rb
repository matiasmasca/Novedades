class Notification < ActiveRecord::Base
  belongs_to :project, inverse_of: :notifications, autosave: true

  has_many :attachment, inverse_of: :notifications, dependent: :destroy

  accepts_attachments_for :attachments, append: true
end
