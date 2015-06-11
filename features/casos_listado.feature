# language: es
Característica: Listado de Casos
    Como un cliente del estudio
    Para poder ver que casos tienen novedades y consultarlas luego
    Deseo ver un listado de mis casos

Escenario: camino feliz.
    Dado que estoy identificado como "cliente"
    Y estoy en la pantalla donde veo "Mis casos"
    Entonces veo un listado con mis casos

Escenario: tiene 2 casos.
    Dado que estoy identificado
    Y que tengo 2 casos
    | nombre_caso          | cliente_id |
    | DeRoche vs Argento   | 1          |
    | DeRoche vs Menganito | 1          |
    Y estoy en la pantalla "Mis casos"
    Entonces veo un listado con 2 casos

Escenario: cliente no tiene casos.
    Dado que estoy identificado
    Y que tengo 0 casos
    Y estoy en la pantalla "Mis casos"
    | nombre_caso          | cliente_id |
    Entonces veo un listado vacio.

Escenario: cliente tiene 1 caso con 2 novedades.
    Dado que estoy identificado
    Y que tengo 1 casos
    Y estoy en la pantalla "Mis casos"
    Y que 1 caso tiene 2 novedades
    | titulo                        | description                                                                                               | adjunto  | caso_id | fecha      |
    | Resolución Juez               | La jueza Barubudia dio resolución favorable                                                               |          | 1       | 03/06/2015 |
    | Presentación recurso de amparo| El día de ayer se presento un recurso de amparo contra la resolución de la jueza Barubudia del 03/06/2015 |          | 1       | 05/06/2015 |

    | nombre_caso         | cliente_id | caso_id | novedades |
    | DeRoche vs Argento  | 1          | 1       | 2         |
    Entonces veo una etiqueta de colores que identifica que el caso tiene 2 novedades
