***Novedades***
===
Repositorio para la edición comunitaria (software libre) de "Novedades", una aplicación web para mantener informados a sus clientes sobre las novedes que hay sobre sus casos/proyectos.

Ha ser desarrollada con Ruby on Rails.

El alcance del proyecto es: sus clientes se identifican y ven un listado de casos con un indicador de novedades para cada caso. Al seleccionar un caso acceden al listado de novedades y seleccionan una novedad para ver su contenido..

**El Origen.**
Encargado por un cliente en particular, trantando de convencerlo de hacerlo como Softwar Libre.

Toda contribución (sugerencias de cambio), consejo, critica constructiva, consultas son bienvenidas.

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
    [![Code Climate](https://codeclimate.com/github/matiasmasca/Novedades/badges/gpa.svg)](https://codeclimate.com/github/matiasmasca/Novedades)

Covertura de código con pruebas, según Coveralls.io
    [![Coverage Status](https://coveralls.io/repos/matiasmasca/Novedades/badge.svg)](https://coveralls.io/r/matiasmasca/Novedades)

Integración Continua: con Travis-ci.org
	[![Build Status](https://travis-ci.org/matiasmasca/Novedades.svg?branch=master)](https://travis-ci.org/matiasmasca/Novedades)

Dependency Status:
    [![Dependency Status](https://gemnasium.com/matiasmasca/Novedades.svg)](https://gemnasium.com/matiasmasca/Novedades)

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
    * COVERALL
    * DATABASE_NAME
    * DATABASE_USER
    * DATABASE_PASS
    * DATABASE_URL
    * FB_App_id
    * FB_App_secret
    * HEROKU_POSTGRESQL_VIOLET_URL
    * loaderio
    * SECRET_KEY_BASE para el secret token
    * TW_Consumer_key
    * TW_Consumer_secret

  - cambiar los .yml de Travis y de Coveralls.
