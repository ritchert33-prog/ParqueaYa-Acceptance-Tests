# Epic: EP03 - Gestión de Cochera y Pagos
# User Story: US19 - Realizar pago digital
# Naturaleza: No funcional (seguridad y confiabilidad transaccional)

Feature: Realizar pago digital
  Como conductor
  Quiero pagar digitalmente
  Para completar mi reserva de forma segura

  Scenario: Pago exitoso
    Given el conductor posee una reserva activa
    When realiza el pago mediante un método válido
    Then el sistema procesa la transacción correctamente

  Scenario: Pago rechazado
    Given el conductor intenta pagar una reserva
    When la entidad financiera rechaza la operación
    Then el sistema muestra un mensaje de error

  Scenario: Comprobante generado
    Given el pago fue realizado exitosamente
    When la transacción finaliza
    Then el sistema genera un comprobante digital
