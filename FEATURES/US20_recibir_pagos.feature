# Epic: EP03 - Gestión de Cochera y Pagos
# User Story: US20 - Recibir pagos

Feature: Recibir pagos
  Como propietario
  Quiero recibir pagos digitales
  Para cobrar de forma segura

  Scenario: Recepción de pago
    Given el conductor realiza un pago exitoso
    When la transacción es procesada
    Then el sistema registra el ingreso para el propietario

  Scenario: Visualización de ingresos
    Given el propietario recibe pagos por reservas
    When consulta su historial financiero
    Then el sistema muestra los ingresos registrados

  Scenario: Notificación de pago recibido
    Given un conductor completa el pago de una reserva
    When la operación finaliza correctamente
    Then el sistema envía una notificación al propietario
