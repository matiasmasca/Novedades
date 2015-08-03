# language: es
Característica: Listado de Casos
    Como un cliente del estudio
    Para poder ver que casos tienen novedades y consultarlas luego
    Deseo ver un listado de mis casos

Antecedentes:
    Dado que estoy identificado como "cliente"
    Y estoy en la pantalla donde veo "Mis casos"

#Camino feliz.
Escenario: tiene 2 casos.
    Dado que tengo 2 casos
    | name                                                          | user_id  |
    | DeRoche c/ Argento s/ indemnización por despido EXP N° 111999 | 1            |
    | DeRoche S/ SUCESIÓN AB-INTESTATO EXPTE. N° 61855              | 1            |
    Y estoy en la pantalla "Mis casos"
    Entonces veo un listado con 2 casos

Escenario: cliente tiene 1 caso con 2 novedades.
    Dado que tengo 1 caso
    | name                                                         | user_id |
    | DeRoche c/ Argento s/ indemnización por despido EXP N°111999 | 1           |
    Y estoy en la pantalla "Mis casos"
    Y que este caso tiene 2 novedades
    | title                         | message                                                                                                   |  project_id | date       |
    | Resolución Juez               | La jueza Barubudia dio resolución favorable                                                               | 1           | 03/06/2015 |
    | Presentación recurso de amparo| El día de ayer se presento un recurso de amparo contra la resolución de la jueza Barubudia del 03/06/2015 | 1           | 05/06/2015 |
    Entonces veo una etiqueta de colores que identifica que el caso tiene 2 novedades

Escenario: ver novedades
    Dado que tengo 1 caso
    | name                | user_id |
    | DeRoche c/ Argento s/ indemnización por despido EXP N°111999  | 1           |
    Y estoy en la pantalla "Mis casos"
    Y que este caso tiene 1 novedad
    | title                         | message                                                                                                   |  project_id | date       |
    | Resolución Juez               | La jueza Barubudia dio resolución favorable                                                               | 1           | 03/06/2015 |
    Y seleccionó "Ver novedades"
    Entonces veo un listado con las 1 novedades

Escenario: cliente no tiene casos.
    Dado que no tengo casos
    | name                 | user_id  |
    |                      |              |
    Entonces veo un listado vacios.
