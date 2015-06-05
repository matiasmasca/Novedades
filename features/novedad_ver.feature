# language: es
Característica: Ver novedad
    Como un cliente del estudio, que tiene al menos 1 caso registrado con al menos 1 novedad
    Para poder informarme sobre una novedad en particular
    Deseo ver en detalle el contenido de la novedad seleccionada de uno de mis casos

Antecedentes:
    Dado que estoy logueado como "cliente"
    Y que he seleccionado el caso "Fulanitvo vs Argento"
    Y que he seleccionado la novedad "Resolución Juez Barubudia"

Escenario: veo el detalle de una novedad, sin adjuntos
  Dado que la novedad tiene 0 adjunto
  | titulo                        | descripcion                                                                                               | adjunto  | caso_id | fecha      |
  | Resolución Juez Barubudia     | La jueza Barubudia dio resolución favorable                                                               |          | 1       | 03/06/2015 |
  Entonces veo el "titulo" y la "descripcion"

Escenario: veo detalle de novedad con imagenes
  Dado que la novedad tiene 1 adjunto
  | titulo                        | descripcion                                                                                               | adjunto  | caso_id | fecha      |
  | Resolución Juez Barubudia     | La jueza Barubudia dio resolución favorable                                                               | res.jpeg | 1       | 03/06/2015 |
  Entonces veo el "titulo" y la "descripcion"
  Y veo la imagen en la pantalla

Escenario: veo detalle de novedad con pdf
  Dado que la novedad tiene 1 adjunto
  Y deseo descargarlo
  Entonces preciono el botón "Descargar Adjunto"
  | titulo                        | descripcion                                                                                               | adjunto  | caso_id | fecha      |
  | Resolución Juez Barubudia     | La jueza Barubudia dio resolución favorable                                                               | res.pdf  | 1       | 03/06/2015 |
  Y veo el archivo descargado

Escenario: veo detalle de novedad con .docx
  Dado que la novedad tiene 1 adjunto
  Y deseo descargarlo
  Entonces preciono el botón "Descargar Adjunto"
  | titulo                        | descripcion                                                                                               | adjunto  | caso_id | fecha      |
  | Resolución Juez Barubudia     | La jueza Barubudia dio resolución favorable                                                               | res.docx | 1       | 03/06/2015 |
  Y veo el archivo descargado

Escenario: descargo adjunto de novedad
  Dado que la novedad tiene 1 adjunto
  Y deseo descargarlo
  Entonces preciono el botón "Descargar Adjunto"
  | titulo                        | descripcion                                                                                               | adjunto  | caso_id | fecha      |
  | Resolución Juez Barubudia     | La jueza Barubudia dio resolución favorable                                                               | res.pdf  | 1       | 03/06/2015 |
  Y veo el archivo descargado

Escenario: la novedad tiene 2 archivos adjuntos
  Dado que la novedad tiene 2 adjunto
  Y deseo descargarlos
  Entonces hay 2 botones para "Descargar Adjunto"
  | titulo                        | descripcion                                                                                               | adjunto            | caso_id | fecha      |
  | Resolución Juez Barubudia     | La jueza Barubudia dio resolución favorable                                                               | res.pdf, res.docx  | 1       | 03/06/2015 |
  Y descargo los 2 archivos
  Y veo los archivos descargados
