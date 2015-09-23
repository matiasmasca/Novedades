module ProjectsHelper
  def project_badge(project)
    count = project.news_count
    badge_notifications(count)
  end

end
