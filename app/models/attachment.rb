class Attachment < ActiveRecord::Base
  belongs_to :notification, autosave: true

  attachment :profile_image, content_type: ["image/jpeg", "image/png", "image/gif", "application/pdf", "application/msword", "application/vnd.oasis.opendocument.text"]

  def path
    #Esto esta así porque attachment_url de ReFile fallaba.
    path = Refile.attachment_url(self, :profile_image)
  end

  def extension
    self.profile_image_content_type.split('/').last.downcase
  end
end
