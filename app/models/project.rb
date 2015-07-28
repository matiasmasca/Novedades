class Project < ActiveRecord::Base
  belongs_to :customer, autosave: true
  belongs_to :user, autosave: true
  has_many :notifications, inverse_of: :project, dependent: :destroy
  #read_mark
  def news_count
    news_count = Notification.where(project_id: self.id, read_mark: false).count
  end

  def last_update
    if Notification.where(project_id: self.id).last
      last_update = Notification.where(project_id: self.id).last.date
      last_update.to_formatted_s(:long)
    end
  end

  def customer_name
    customer = User.find(self.customer_id)
    name = customer.nombre
  end
end
