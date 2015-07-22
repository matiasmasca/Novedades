module NotificationsHelper
  def attachment_badge(notification)
    count = notification.archivos_adjuntos
    badge_notifications(count)
  end
  
end
