# Epic: EP02 - Búsqueda y Reserva de Estacionamientos
# User Story: US09 - Ver detalles de cochera

Feature: Ver detalles de cochera
  Como conductor
  Quiero consultar información detallada de una cochera
  Para decidir si la reservo

  Scenario: Consulta de detalles
    Given el usuario selecciona una cochera
    When accede a la vista detallada
    Then el sistema muestra dirección, precio, horario y calificaciones

  Scenario: Visualización de fotografías
    Given la cochera cuenta con imágenes registradas
    When el usuario accede a los detalles
    Then el sistema muestra las fotografías disponibles

  Scenario: Información incompleta
    Given existen datos faltantes de una cochera
    When el usuario visualiza los detalles
    Then el sistema indica que parte de la información no está disponible
