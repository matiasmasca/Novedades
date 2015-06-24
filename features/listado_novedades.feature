# language: es
Característica: Listado de Novedades
    Como un cliente
    Para poder ver novedades que tienen un caso
    Deseo ver un listado de las novedades de uno de mis casos

Antecedentes:
    Dado que estoy logueado como "Cliente"
    Y que he seleccionado "Ver novedades" del caso "DeRoche vs Pepe Argento"

Escenario: Veo listado de novedades.
    Dado que el caso tiene 2 novedades
     | titulo                        | description                                                                                               | adjunto  | caso_id | fecha     |
     | Resolución Juez               | La jueza Barubudia dio resolución favorable                                                               | reso.pdf | 1       | 03/06/2015 |
     | Presentación recurso de amparo| El día de ayer se presento un recurso de amparo contra la resolución de la jueza Barubudia del 03/06/2015 |          | 1       | 05/06/2015 |
    Y que estoy en la pantalla de "CASO: 'DeRoche vs Pepe Argento'"
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
