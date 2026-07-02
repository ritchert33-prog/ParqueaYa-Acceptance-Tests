# Epic: EP01 - Cuentas y Seguridad (US no funcional seleccionada por prioridad)
# User Story: US24 - Recibir notificaciones
# Naturaleza: No funcional (confiabilidad y oportunidad de entrega)

Feature: Recibir notificaciones

  Como usuario
  Quiero recibir notificaciones sobre reservas y pagos
  Para mantenerme informado

  Scenario: Notificación de reserva

    Given ocurre el siguiente evento

      | Evento | Estado |
      | Reserva creada | Exitosa |

    When el sistema procesa la información

    Then el usuario recibe una notificación informativa

  Scenario: Notificación de pago

    Given existe la siguiente transacción

      | Operación | Estado |
      | OP1001 | Completada |

    When el pago es confirmado

    Then el sistema envía una notificación al usuario correspondiente

  Scenario: Consulta de notificaciones

    Given el usuario posee las siguientes notificaciones

      | Tipo | Fecha |
      | Reserva | 15/07/2026 |
      | Pago | 16/07/2026 |
      | Cancelación | 17/07/2026 |

    When el usuario accede al centro de notificaciones

    Then el sistema muestra el historial de avisos recibidos
