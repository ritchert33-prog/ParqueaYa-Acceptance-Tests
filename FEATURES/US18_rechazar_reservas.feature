# Epic: EP03 - Gestión de Cochera y Pagos
# User Story: US18 - Rechazar reservas
Tambien estoy de acuerdo con eso
Feature: Rechazar reservas
  Como propietario
  Quiero rechazar solicitudes
  Para no ofrecer mi cochera cuando no esté disponible

  Scenario: Rechazo de reserva
    Given existe una solicitud pendiente
    When el propietario rechaza la reserva
    Then el sistema cambia el estado a rechazada

  Scenario: Notificación de rechazo
    Given la reserva fue rechazada
    When el propietario confirma la acción
    Then el sistema informa al conductor mediante una notificación

  Scenario: Actualización del estado
    Given una reserva fue rechazada
    When el conductor consulta su historial
    Then el sistema muestra el estado rechazado
.
