# Epic: EP03 - Gestión de Cochera y Pagos
# User Story: US17 - Aceptar reservas

Feature: Aceptar reservas

  Como propietario
  Quiero aceptar solicitudes de reserva
  Para controlar quién utiliza mi cochera

  Scenario: Aceptación de reserva

    Given existe la siguiente solicitud

      | Reserva | Conductor | Estado |
      | R001 | Juan Pérez | Pendiente |

    When el propietario acepta la reserva

    Then el sistema cambia el estado a aprobada

  Scenario: Notificación al conductor

    Given existe la siguiente reserva

      | Reserva | Estado |
      | R001 | Aprobada |

    When el propietario confirma la aceptación

    Then el sistema envía una notificación al conductor

  Scenario: Visualización de reserva aprobada

    Given existen las siguientes reservas

      | Reserva | Estado |
      | R001 | Aprobada |

    When el propietario consulta sus reservas

    Then el sistema muestra el estado aprobado
