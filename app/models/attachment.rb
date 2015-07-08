class Attachment < ActiveRecord::Base
  belongs_to :notifications, autosave: true

  attachment :profile_image, content_type: ["image/jpeg", "image/png", "image/gif", "application/pdf", "application/doc"]


end
