# language: es
Característica: Indentificacion clientes
    Como un cliente del estudio
    Para poder ver las novedades de mis casos
    Deseo identificarme en el sistema

Antecedentes:
  Dado que soy cliente registrado
  Y me identifico como "don@deroche.com"

Escenario: cliente todo bien.
    Y que el usuario esta "habilitado"
    Entonces veo un mensaje "Bienvenido DeRoche - Cliente."

Escenario: cliente usuario deshabilitado.
    Y que el usuario esta "deshabilitado"
    Entonces veo un mensaje que dice "Su usuario ha sido deshabilitado, por favor comuniquese con el Dr. Cosme Fulanito (mail@mail.com)"
