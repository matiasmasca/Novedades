module ApplicationHelper
  def read_mark_button(notification)
     if notification.read_mark?
       @content = content_tag(:a, (link_to ' Leída', notification_path(notification, cambiar_estado: "NoLeida"), :class => 'btn btn-default fa fa-check-square-o', title: "Marcar como NO Leida"))
     else
       link = link_to ' No Leída', notification_path(notification, cambiar_estado: "Leida"), :class => 'btn btn-default fa fa-square-o', title: "Marcar como Leida"
       #logger.info "ACA!!!!: " + link #Para ver en la consola
       @content = content_tag(:a, link)
     end
  end

  def read_mark_line(registro)
    #Devolver la clase success para pintar la linea de verde
    if registro.read_mark?
      @content = tag("tr", class: "success")
      else
      @content = tag("tr")
    end
  end

  def badge_notifications(count)
      if count > 0
        #verde
        @content = tag(:span, class: "badge alert-success")
      else
        #default
        @content = tag(:span, class: "badge")
      end
  end
end
