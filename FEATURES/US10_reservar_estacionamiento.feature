# Epic: EP02 - Búsqueda y Reserva de Estacionamientos
# User Story: US10 - Reservar estacionamiento

Feature: Reservar estacionamiento
  Como conductor
  Quiero reservar una cochera
  Para asegurar mi espacio antes de llegar

  Scenario: Reserva exitosa
    Given la cochera se encuentra disponible
    When el conductor confirma la reserva
    Then el sistema registra la reserva y envía una confirmación

  Scenario: Cochera ocupada
    Given otro usuario reservó previamente la cochera
    When el conductor intenta reservarla
    Then el sistema informa que ya no está disponible

  Scenario: Reserva registrada en historial
    Given la reserva fue realizada correctamente
    When el conductor consulta su historial
    Then el sistema muestra la nueva reserva registrada
