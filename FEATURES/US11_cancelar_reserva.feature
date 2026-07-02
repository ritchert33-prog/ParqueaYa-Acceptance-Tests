# Epic: EP02 - Búsqueda y Reserva de Estacionamientos
# User Story: US11 - Cancelar reserva

Feature: Cancelar reserva

  Como conductor
  Quiero cancelar una reserva
  Para liberar el espacio cuando ya no lo necesite

  Scenario: Cancelación exitosa

    Given el conductor posee la siguiente reserva

      | Código | Cochera | Estado |
      | R001 | C001 | Activa |

    When selecciona cancelar reserva

    Then el sistema elimina la reserva y libera el espacio

  Scenario: Confirmación de cancelación

    Given existe la siguiente reserva

      | Código | Estado |
      | R001 | Activa |

    When confirma la cancelación

    Then el sistema muestra un mensaje de cancelación exitosa

  Scenario: Reserva no encontrada

    Given el siguiente código

      | Código |
      | R999 |

    When realiza la solicitud

    Then el sistema muestra un mensaje de error
