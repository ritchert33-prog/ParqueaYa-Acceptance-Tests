# Epic: EP02 - Búsqueda y Reserva de Estacionamientos
# User Story: US07 - Ver disponibilidad en tiempo real
# Naturaleza: No funcional (consistencia / actualización de datos en tiempo real)

Feature: Ver disponibilidad en tiempo real
  Como conductor
  Quiero conocer la disponibilidad actual
  Para evitar perder tiempo buscando espacios ocupados

  Scenario: Consulta de disponibilidad
    Given el usuario visualiza una cochera disponible
    When accede a sus detalles
    Then el sistema muestra la disponibilidad actualizada

  Scenario: Cambio de disponibilidad
    Given otro conductor reserva una cochera
    When la disponibilidad cambia
    Then el sistema actualiza la información automáticamente

  Scenario: Espacio ocupado
    Given una cochera ya fue reservada
    When el usuario intenta seleccionarla
    Then el sistema informa que el espacio ya no está disponible
