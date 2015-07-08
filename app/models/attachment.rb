class Attachment < ActiveRecord::Base
  belongs_to :notifications, autosave: true
  attachment :profile_image

end
