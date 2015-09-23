$("#project_select").empty().append("<option value='0'>Seleccione un Proyecto</option>")
$("#project_select").append("<%= escape_javascript(render(:partial => @projects)) %>")
