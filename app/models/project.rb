class Project < ActiveRecord::Base
  belongs_to :customer, autosave: true
  has_many :notifications, inverse_of: :project, dependent: :destroy

  def news_count
    news_count = Notification.where(project_id: self.id).count
  end
end
