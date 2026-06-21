# Epic: EP01 - Cuentas y Seguridad (US no funcional seleccionada por prioridad)
# User Story: US24 - Recibir notificaciones
# Naturaleza: No funcional (confiabilidad y oportunidad de entrega)

Feature: Recibir notificaciones
  Como usuario
  Quiero recibir notificaciones sobre reservas y pagos
  Para mantenerme informado

  Scenario: Notificación de reserva
    Given una reserva es creada o modificada
    When el evento ocurre en el sistema
    Then el usuario recibe una notificación informativa

  Scenario: Notificación de pago
    Given una transacción es procesada exitosamente
    When el pago es confirmado
    Then el sistema envía una notificación al usuario correspondiente

  Scenario: Consulta de notificaciones
    Given existen notificaciones registradas
    When el usuario accede al centro de notificaciones
    Then el sistema muestra el historial de avisos recibidos
