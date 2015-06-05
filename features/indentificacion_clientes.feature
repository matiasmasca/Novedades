# language: es
Característica: Indentificacion clientes
    Como un cliente del estudio
    Para poder ver las novedades de mis casos
    Deseo identificarme en el sistema

Escenario: cliente todo bien.
    Dado que soy cliente registrado
    Y me identifico como "pepeargento@cliente.com"
    Entonces veo un mensaje "Bienvenido Pepe Argento - Cliente."

Escenario: cliente usuario deshabilitado.
    Dado que el usuario esta "deshabilitado"
    Entonces veo un mensaje que dice "Su usuario ha sido deshabilitado, por favor comuniquese con Cosme Fulanito (mail@mail.com)"
