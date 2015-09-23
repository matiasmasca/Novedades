# language: es
Característica: Ver novedad
    Como un cliente del estudio, que tiene al menos 1 proyecto registrado con al menos 1 novedad
    Para poder informarme sobre una novedad en particular
    Deseo ver en detalle el contenido de la novedad seleccionada de uno de mis proyectos

Antecedentes:
    Dado que estoy identificado como "cliente"
    Y que he seleccionado el proyecto "Project 1"
    Y que he seleccionado la novedad "Mockups disponibles"

Escenario: veo el detalle de una novedad
  Entonces veo el titulo "Mockups disponibles"
  Y el mensaje "Puede ver y validar los bosquejos de la interfaz grafica"
  Y la fecha "01/09/2014"

Escenario: veo detalle de novedad con imagenes
  Dado que la novedad tiene 1 adjunto
  | adjunto   |news_id | project_id |
  | mockups.jpeg | 1      | 1          |
  Entonces veo el titulo "Mockups disponibles" 
  Y el mensaje "Puede ver y validar los bosquejos de la interfaz grafica"
  Y veo la imagen en la pantalla

@wip
Escenario: veo detalle de novedad con pdf
  Dado que la novedad tiene 1 adjunto
  Y deseo descargarlo
  Entonces preciono el botón "Descargar Adjunto"
  | titulo                        | detalle                                                                                               | adjunto  | proyecto_id | fecha      |
  | Mockups listos     | Puede ver y validar los bosquejos de la interfaz grafica                                                               | bosquejo_pantallas.pdf  | 1       | 03/06/2015 |
  Y veo el archivo descargado

@wip
Escenario: veo detalle de novedad con .docx
  Dado que la novedad tiene 1 adjunto
  Y deseo descargarlo
  Entonces preciono el botón "Descargar Adjunto"
  | titulo                        | detalle                                                                                               | adjunto  | proyecto_id | fecha      |
  | Mockups listos    | Puede ver y validar los bosquejos de la interfaz grafica                                                               | res.docx | 1       | 03/06/2015 |
  Y veo el archivo descargado

@wip
Escenario: descargo adjunto de novedad
  Dado que la novedad tiene 1 adjunto
  Y deseo descargarlo
  Entonces preciono el botón "Descargar Adjunto"
  | titulo                        | detalle                                                                                               | adjunto  | proyecto_id | fecha      |
  | Mockups modificados     | Puede ver y validar los bosquejos de la interfaz grafica                                                               | res.pdf  | 1       | 03/06/2015 |
  Y veo el archivo descargado

@wip
Escenario: la novedad tiene 2 archivos adjuntos
  Dado que la novedad tiene 2 adjunto
  Y deseo descargarlos
  Entonces hay 2 botones para "Descargar Adjunto"
  | titulo                        | detalle                                                                                               | adjunto            | proyecto_id | fecha      |
  | Mockups modificados    | Puede ver y validar los bosquejos de la interfaz grafica                                                           | mocks1.pdf, notas.docx  | 1       | 03/06/2015 |
  Y descargo los 2 archivos
  Y veo los archivos descargados

@wip
Escenario: veo el detalle de una novedad, sin adjuntos
