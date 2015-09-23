# language: es
Característica: Listado de Novedades
    Como un cliente
    Para poder ver novedades que tienen un proyecto
    Deseo ver un listado de las novedades de uno de mis proyectos

Antecedentes:
    Dado que estoy logueado como "cliente"
    Dado que tengo 1 proyecto
    | name       | user_id |
    | Project 1  | 1       |
    Y estoy en la pantalla "Mis proyectos"
    Y que este proyecto tiene 3 novedades
    | title             | message                                                                                                   | project_id | date       |
    | Mockups           | Revise las imagenes si son lo que acordamos en la reunion | 1          | 2015-03-01 |
    | Intefaces en alta | Ya puede consultar las interfaces como van quedando en la demo                                                                | 1          | 2014-12-01 |
    | Demo disponible   | Le recordamos la demo esta disponible en demo.app.com                                                              | 1          | 2015-07-01 |
    Y seleccionó "Ver novedades"
    Entonces veo un listado con las 3 novedades

Escenario: Veo listado de novedades.
    Dado que el proyecto tiene 3 novedades
     | title                         | message                                                                                                   | project_id | date       |
    | Mockups | Revise las imagenes si son lo que acordamos en la reunion | 1          | 2015-03-01 |
    | Intefaces en alta        | Ya puede consultar las interfaces como van quedando en la demo                                                                | 1          | 2014-12-01 |
    | Demo disponible     | Le recordamos la demo esta disponible en demo.app.com                                                              | 1          | 2015-07-01 |
    Entonces veo un listado con las 3 novedades

Escenario: Las novedades estan ordenadas de la más reciente a la más antigua
    Entonces debo ver "Demo disponible" antes que "Mockups"

Escenario: proyecto sin novedades
    Dado que el proyecto no tiene novedades
     | title | message | adjunto | proyecto_id | fecha |
    Entonces veo el listado de novedades vacio

@wip
Escenario: novedades con adjuntos
  Dado que la novedad tiene 1 adjunto
    | adjunto   |news_id | project_id | date       |
    | mockup.pdf  | 1      | 1          | 03/06/2015 |
    | userstories.docx | 2      | 1          | 05/06/2015 |
