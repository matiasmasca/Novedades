class Project < ActiveRecord::Base
  belongs_to :customer

  def news
    news_count = New.where(project_id: self.id).count
  end
end
