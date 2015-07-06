# language: es
Característica: Ver novedad
    Como un cliente del estudio, que tiene al menos 1 caso registrado con al menos 1 novedad
    Para poder informarme sobre una novedad en particular
    Deseo ver en detalle el contenido de la novedad seleccionada de uno de mis casos

Antecedentes:
    Dado que estoy identificado como "cliente"
    Y que he seleccionado el caso "DeRoche vs Pepe Argento"
    Y que he seleccionado la novedad "Resolución Juez Barubudia"

Escenario: veo el detalle de una novedad
  Entonces veo el titulo "Resolución Juez Barubudia"
  Y el mensaje "La jueza Barubudia dio resolución favorable"
  Y la fecha "01/09/2014"

Escenario: veo detalle de novedad con imagenes
  Dado que la novedad tiene 1 adjunto
  | adjunto   |news_id | project_id |
  | reso.jpeg | 1      | 1          |
  Entonces veo el titulo "Resolución Juez Barubudia" 
  Y el mensaje "La jueza Barubudia dio resolución favorable"
  Y veo la imagen en la pantalla

@wip
Escenario: veo detalle de novedad con pdf
  Dado que la novedad tiene 1 adjunto
  Y deseo descargarlo
  Entonces preciono el botón "Descargar Adjunto"
  | titulo                        | detalle                                                                                               | adjunto  | caso_id | fecha      |
  | Resolución Juez Barubudia     | La jueza Barubudia dio resolución favorable                                                               | res.pdf  | 1       | 03/06/2015 |
  Y veo el archivo descargado

@wip
Escenario: veo detalle de novedad con .docx
  Dado que la novedad tiene 1 adjunto
  Y deseo descargarlo
  Entonces preciono el botón "Descargar Adjunto"
  | titulo                        | detalle                                                                                               | adjunto  | caso_id | fecha      |
  | Resolución Juez Barubudia     | La jueza Barubudia dio resolución favorable                                                               | res.docx | 1       | 03/06/2015 |
  Y veo el archivo descargado

@wip
Escenario: descargo adjunto de novedad
  Dado que la novedad tiene 1 adjunto
  Y deseo descargarlo
  Entonces preciono el botón "Descargar Adjunto"
  | titulo                        | detalle                                                                                               | adjunto  | caso_id | fecha      |
  | Resolución Juez Barubudia     | La jueza Barubudia dio resolución favorable                                                               | res.pdf  | 1       | 03/06/2015 |
  Y veo el archivo descargado

@wip
Escenario: la novedad tiene 2 archivos adjuntos
  Dado que la novedad tiene 2 adjunto
  Y deseo descargarlos
  Entonces hay 2 botones para "Descargar Adjunto"
  | titulo                        | detalle                                                                                               | adjunto            | caso_id | fecha      |
  | Resolución Juez Barubudia     | La jueza Barubudia dio resolución favorable                                                           | res.pdf, res.docx  | 1       | 03/06/2015 |
  Y descargo los 2 archivos
  Y veo los archivos descargados

@wip
Escenario: veo el detalle de una novedad, sin adjuntos
