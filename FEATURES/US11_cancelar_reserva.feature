# Epic: EP02 - Búsqueda y Reserva de Estacionamientos
# User Story: US11 - Cancelar reserva

Feature: Cancelar reserva
  Como conductor
  Quiero cancelar una reserva
  Para liberar el espacio cuando ya no lo necesite

  Scenario: Cancelación exitosa
    Given el conductor tiene una reserva activa
    When selecciona la opción cancelar reserva
    Then el sistema elimina la reserva y libera el espacio

  Scenario: Confirmación de cancelación
    Given el conductor solicita cancelar una reserva
    When confirma la acción
    Then el sistema muestra un mensaje de cancelación exitosa

  Scenario: Reserva no encontrada
    Given el conductor intenta cancelar una reserva inexistente
    When realiza la solicitud
    Then el sistema muestra un mensaje de error
