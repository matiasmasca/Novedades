# language: es
Característica: Listado de Projectos
    Como un cliente del estudio
    Para poder ver que proyectos tienen novedades y consultarlas luego
    Deseo ver un listado de mis proyectos

Antecedentes:
    Dado que estoy identificado como "cliente"
    Y estoy en la pantalla donde veo "Mis proyectos"

#Camino feliz.
Escenario: tiene 2 proyectos.
    Dado que tengo 2 proyectos
    | name                           | user_id  |
    | Project Web Site Institutional | 1        |
    | Proyecto Expasión social media | 1        |
    Y estoy en la pantalla "Mis proyectos"
    Entonces veo un listado con 2 proyectos

Escenario: cliente tiene 1 proyecto con 2 novedades.
    Dado que tengo 1 proyecto
    | name                           | user_id |
    | Project Web Site Institutional | 1       |
    Y estoy en la pantalla "Mis proyectos"
    Y que este proyecto tiene 2 novedades
    | title             | message                                          | project_id | date       |
    | Mock Ups          | Necesitamos validar estas interfaces             | 1          | 03/06/2015 |
    | Versión de prueba | Puede consultar la demo del sitio demo.sitio.com | 1          | 05/06/2015 |
    Entonces veo una etiqueta de colores que identifica que el proyecto tiene 2 novedades

Escenario: ver novedades
    Dado que tengo 1 proyecto
    | name              | user_id |
    | Versión de prueba | 1       |
    Y estoy en la pantalla "Mis proyectos"
    Y que este proyecto tiene 1 novedad
    | title             | message                                          |  project_id | date       |
    | Versión de prueba | Puede consultar la demo del sitio demo.sitio.com | 1           | 03/06/2015 |
    Y seleccionó "Ver novedades"
    Entonces veo un listado con las 1 novedades

Escenario: cliente no tiene proyectos.
    Dado que no tengo proyectos
    | name                 | user_id  |
    |                      |    1     |
    Entonces veo un listado vacios.
