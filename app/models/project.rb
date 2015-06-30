class Project < ActiveRecord::Base
  belongs_to :customer

  def news
    news_count = News.where(project_id: self.id).count
  end
end
