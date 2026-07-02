# Epic: EP03 - Gestión de Cochera y Pagos
# User Story: US19 - Realizar pago digital
# Naturaleza: No funcional (seguridad y confiabilidad transaccional)

Feature: Realizar pago digital

  Como conductor
  Quiero pagar digitalmente
  Para completar mi reserva de forma segura

  Scenario: Pago exitoso

    Given existe la siguiente reserva

      | Reserva | Monto |
      | R001 | S/20 |

    When el conductor realiza el siguiente pago

      | Método | Estado |
      | Tarjeta Visa | Aprobado |

    Then el sistema procesa la transacción correctamente

  Scenario: Pago rechazado

    Given existe la siguiente reserva

      | Reserva | Monto |
      | R002 | S/15 |

    When el conductor realiza el siguiente pago

      | Método | Estado |
      | Tarjeta Mastercard | Rechazado |

    Then el sistema muestra un mensaje de error

  Scenario: Comprobante generado

    Given el siguiente pago fue aprobado

      | Operación | Monto |
      | OP1001 | S/20 |

    When la transacción finaliza

    Then el sistema genera un comprobante digital
