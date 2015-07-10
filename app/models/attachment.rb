class Attachment < ActiveRecord::Base
  belongs_to :notifications, autosave: true

  attachment :profile_image, content_type: ["image/jpeg", "image/png", "image/gif", "application/pdf", "application/msword", "application/vnd.oasis.opendocument.text"]

  def path
    #Esto esta así porque attachment_url de ReFile fallaba.
    path = Refile.attachment_url(self, :profile_image)
  end

end
