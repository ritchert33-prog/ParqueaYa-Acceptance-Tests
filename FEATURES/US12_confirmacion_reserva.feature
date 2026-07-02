# Epic: EP02 - Búsqueda y Reserva de Estacionamientos
# User Story: US12 - Confirmación de reserva

Feature: Confirmación de reserva

  Como conductor
  Quiero recibir una confirmación de reserva
  Para asegurar que el espacio fue asignado

  Scenario: Confirmación automática

    Given existe la siguiente reserva

      | Código | Estado |
      | R001 | Pendiente |

    When el proceso finaliza

    Then el sistema envía una confirmación de reserva

  Scenario: Visualización de confirmación

    Given la siguiente reserva

      | Código | Estado |
      | R001 | Confirmada |

    When el usuario accede al detalle

    Then el sistema muestra el estado confirmado

  Scenario: Notificación enviada

    Given la siguiente reserva

      | Código |
      | R001 |

    When el sistema procesa la reserva

    Then se envía una notificación al conductor
