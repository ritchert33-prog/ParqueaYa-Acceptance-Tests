# Epic: EP02 - Búsqueda y Reserva de Estacionamientos
# User Story: US12 - Confirmación de reserva

Feature: Confirmación de reserva
  Como conductor
  Quiero recibir una confirmación de reserva
  Para asegurar que el espacio fue asignado

  Scenario: Confirmación automática
    Given el conductor realiza una reserva correctamente
    When el proceso finaliza
    Then el sistema envía una confirmación de reserva

  Scenario: Visualización de confirmación
    Given la reserva fue registrada exitosamente
    When el usuario accede al detalle de la reserva
    Then el sistema muestra el estado confirmado

  Scenario: Notificación enviada
    Given una reserva ha sido confirmada
    When el sistema procesa la reserva
    Then se envía una notificación al conductor
