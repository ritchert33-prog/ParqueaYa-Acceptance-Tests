# Epic: EP03 - Gestión de Cochera y Pagos
# User Story: US20 - Recibir pagos

Feature: Recibir pagos

  Como propietario
  Quiero recibir pagos digitales
  Para cobrar de forma segura

  Scenario: Recepción de pago

    Given existe la siguiente transacción

      | Operación | Monto |
      | OP1001 | S/20 |

    When la transacción es procesada

    Then el sistema registra el ingreso para el propietario

  Scenario: Visualización de ingresos

    Given existen los siguientes pagos

      | Operación | Monto |
      | OP1001 | S/20 |
      | OP1002 | S/35 |

    When el propietario consulta su historial financiero

    Then el sistema muestra los ingresos registrados

  Scenario: Notificación de pago recibido

    Given existe el siguiente pago

      | Operación | Estado |
      | OP1001 | Completado |

    When la operación finaliza correctamente

    Then el sistema envía una notificación al propietario
