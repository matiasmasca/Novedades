module ProjectsHelper
  def badge_notifications(project)
      if project.news_count > 0
        #verde
        @content = tag(:span, class: "badge pull-right alert-success")
      else
        #default
        @content = tag(:span, class: "badge pull-right alert-default")
      end
  end

end
