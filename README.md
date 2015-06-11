***Novedades***
===
Repositorio para la edición comunitaria (software libre) de "Novedades", una aplicación web para mantener informados a sus clientes sobre las novedes que hay sobre sus casos/proyectos.

Ha ser desarrollada con Ruby on Rails.

El alcance del proyecto es: sus clientes se identifican y ven un listado de casos con un indicador de novedades para cada caso. Al seleccionar un caso acceden al listado de novedades y seleccionan una novedad para ver su contenido..

**El Origen.**
En esencia es un experimento de aplicación y practica de los conceptos de BDD y TDD utilizando el lenguaje de programación Ruby y el framework Ruby on Rails.
Algunos de los archivos no siguen exactamente las buenas practicas, en algunos casos por desconocimiento y en otros como parte del experimento; ya que es la primera experiencia con Rails y la metodología seguida.
Como es parte la parte practica de mi "trabajo final de carrera". No se pueden aceptar contribuciones mayores hasta no completar un proceso de evaluación en la universidad a la que asisto; sin embargo toda contribución (sugerencias de cambio), consejo, critica constructiva, consultas son bienvenidas.

**Herramientas**.
  - Para las Historias de Usuario se utilizará: **PivotalTracker**
  - Para BDD, se utiliza: **Cucumber**, **Capybara**.
  - Para TDD, se utiliza: **RSpec**.
  - Para probar continuamente, se utiliza: **Guard**
  - Para la Integración Continua: **Travis-ci**
  - Para el deploy, el servicio de hosting: **Heroku**

**Servicios Externos.**
-----------------------
Novedades esta siendo integrado con servicios externos para mejorar la calidad de su código. A continuación puede ver una lista de ellos.

Calidad del Código, seǵun CodeClimate
    [![Code Climate](https://codeclimate.com/github/matiasmasca/novedades.png)](https://codeclimate.com/github/matiasmasca/novedades)

Covertura de código con pruebas, según Coveralls.io
    [![Coverage Status](https://coveralls.io/repos/matiasmasca/novedades/badge.png)](https://coveralls.io/r/matiasmasca/novedades)

Integración Continua: con Travis-ci.org
    [![Build Status](https://travis-ci.org/matiasmasca/novedades.svg?branch=master)](https://travis-ci.org/matiasmasca/novedades)

Dependency Status:
    [![Dependency Status](https://gemnasium.com/matiasmasca/novedades.svg)](https://gemnasium.com/matiasmasca/novedades)

CodeReview - TODOs:
[![PullReview stats](https://www.pullreview.com/github/matiasmasca/novedades/badges/master.svg?)](https://www.pullreview.com/github/matiasmasca/novedades/reviews/master)



**Notas Técnicas**
===========

* Ruby version:
    ruby

* Rails version:
    rails

* System dependencies:
    mirar el archivo gemfile

* Configuration:
    Nada especial por ahora.

* Instalación para Dev:
    bundler install

* Database creation:
    rake db:migrate

* Database initialization:
    rake db:seed
    rake db:test:prepare

* How to run the test suite:
    cucumber
    cucumber --profile wip (para trabajar sobre algo en particular)
    rspec

* Services (job queues, cache servers, search engines, etc.):
    nada especial.

* Deployment instructions:
  - cambiar el token ejecutando: rake secret
  - Crear las variables de entorno:
    * DATABASE_NAME
    * DATABASE_USER
    * DATABASE_PASS
    * SECRET_KEY_BASE para el secret token
  - cambiar los .yml de Travis y de Coveralls.
