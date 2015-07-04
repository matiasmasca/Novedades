# language: es
Característica: Listado de Novedades
    Como un cliente
    Para poder ver novedades que tienen un caso
    Deseo ver un listado de las novedades de uno de mis casos

Antecedentes:
    Dado que estoy logueado como "cliente"
    Dado que tengo 1 caso
    | name                | customer_id |
    | DeRoche vs Argento  | 1           |
    Y estoy en la pantalla "Mis casos"
    Y que este caso tiene 3 novedades
    | title                         | message                                                                                                   | project_id | date       |
    | Presentación recurso de amparo| El día de ayer se presento un recurso de amparo contra la resolución de la jueza Barubudia del 03/06/2015 | 1          | 2015-03-01 |
    | Reunion con Defensores        | nos encontramos en el café Marta DeSalvado                                                                | 1          | 2014-12-01 |
    | Resolución Juez Barubudia     | La jueza Barubudia dio resolución favorable                                                               | 1          | 2015-07-01 |
    Y seleccionó "Ver novedades"
    Entonces veo un listado con las novedades

Escenario: Veo listado de novedades.
    Dado que el caso tiene 3 novedades
     | title                         | message                                                                                                   | project_id | date       |
     | Resolución Juez               | La jueza Barubudia dio resolución favorable                                                               | 1          | 01/09/2014 |
     | Reunion con Defensores        | nos encontramos en el café Marta DeSalvado                                                                | 1          | 2014-12-01 |
     | Presentación recurso de amparo| El día de ayer se presento un recurso de amparo contra la resolución de la jueza Barubudia del 03/06/2015 | 1          | 01/03/2015 |
    Entonces veo un listado con las 3 novedades

Escenario: Las novedades estan ordenadas de la más reciente a la más antigua
    Entonces debo ver "Resolución Juez Barubudia" antes que "Reunion con Defensores"

Escenario: caso sin novedades
    Dado que el caso no tiene novedades
     | title | message | adjunto | caso_id | fecha |
    Entonces veo el listado de novedades vacio

@wip
Escenario: novedades con adjuntos
  Dado que la novedad tiene 1 adjunto
    | adjunto   |news_id | project_id | date       |
    | reso.pdf  | 1      | 1          | 03/06/2015 |
    | rsta.docx | 2      | 1          | 05/06/2015 |
