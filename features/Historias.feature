Característica: Indentificacion
    Como un cliente
    Para poder ver las novedades de mis casos
    Deseo identificarme en el sistema

Escenario: todo bien.
    Dado que me identifico como "pepeargento@cliente.com"
    Entonces veo un mensaje "Bienvenido Pepe Argento - Cliente."

Escenario: usuario deshabilitado.
    Dado que el usuario esta "deshabilitado"
    Entonces veo un mensaje que dice "Su usuario ha sido deshabilitado, por favor comuniquese con Cosme Fulanito (mail@mail.com)"

#--
Característica: Listado de Casos 
    Como un cliente
    Para poder ver que casos tienen novedades y consultarlas luego
    Deseo ver un listado de mis casos

Escenario: camino feliz.
    Dado que estoy identificado
    Y estoy en  "Mis casos"
    Entonces veo un listado con mis casos

Escenario: tiene 2 casos.
    Dado que estoy identificado
    Y estoy en  "Mis casos"
    Entonces veo un listado con 2 casos

Escenario: cliente no tiene casos.
    Dado que estoy identificado
    Y estoy en  "Mis casos"
    Entonces veo un listado vacio.

Escenario: cliente tiene 1 caso con 2 novedades.
    Dado que estoy identificado
    Y estoy en  "Mis casos"
    Y que 1 caso tiene 2 novedades
    Entonces veo una etiqueta de colores que identifica que el caso tiene 2 novedades

#--
Característica: Listado de Novedades 
    Como un cliente
    Para poder ver novedades que tienen un caso
    Deseo ver un listado de las novedades de uno de mis casos

Antecedentes:
    Dado que estoy logueado como "Cliente"
    Y que he seleccionado "Ver novedades" del caso 'Cosme Fulanito vs Pepe Argento'

Escenario: Veo listado de novedades.
    Dado que el caso tiene 2 novedades
     | titulo                        | description                                                                                               | adjunto  | caso_id | fecha     |
     | Resolución Juez               | La jueza Barubudia dio resolución favorable                                                               | reso.pdf | 1       | 03/06/2015 |
     | Presentación recurso de amparo| El día de ayer se presento un recurso de amparo contra la resolución de la jueza Barubudia del 03/06/2015 |          | 1       | 05/06/2015 |  
    Y que estoy en la pantalla de "Novedades del Caso 'Cosme Fulanito vs Pepe Argento'"
    Entonces veo un listado con las 2 novedades    

Escenario: Las novedades estan ordenadas de la más reciente a la más antigua
    Dado que el caso tiene 2 novedades
     | titulo                        | description                                                                                               | adjunto  | caso_id | fecha     |
     | Presentación recurso de amparo| El día de ayer se presento un recurso de amparo contra la resolución de la jueza Barubudia del 03/06/2015 |          | 1       | 05/12/2015 |  
     | Resolución Juez Barubudia     | La jueza Barubudia dio resolución favorable                                                               | reso.pdf | 1       | 03/05/2015 |
    Entonces veo un listado ordenado cronologicamente

Escenario: caso sin novedades
    Dado que el caso no tiene novedades
     | titulo | description | adjunto | caso_id | fecha|
    Entonces veo un listado vacio con los titulos

#--
Característica: Ver novedad 
    Como un cliente
    Para poder informarme sobre una novedad en particular
    Deseo ver en detalle el contenido de la novedad seleccionada de uno de mis casos

Antecedentes:
    Dado que estoy logueado como "Cliente"
    Y que he seleccionado la novedad "Resolución Juez Barubudia"

Escenario: veo el detalle de una novedad, sin adjuntos
Escenario: veo detalle de novedad con imagenes
Escenario: veo detalle de novedad con pdf
Escenario: veo detalle de novedad con .docx
Escenario: descargo adjunto de novedad
