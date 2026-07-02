# Epic: EP02 - Búsqueda y Reserva de Estacionamientos
# User Story: US07 - Ver disponibilidad en tiempo real
# Naturaleza: No funcional (consistencia / actualización de datos en tiempo real)

Feature: Ver disponibilidad en tiempo real

  Como conductor
  Quiero conocer la disponibilidad actual
  Para evitar perder tiempo buscando espacios ocupados

  Scenario: Consulta de disponibilidad

    Given existen las siguientes cocheras

      | Cochera | Estado |
      | C001 | Disponible |
      | C002 | Ocupada |

    When el usuario accede a los detalles

    Then el sistema muestra la disponibilidad actualizada

  Scenario: Cambio de disponibilidad

    Given la cochera presenta el siguiente estado

      | Cochera | Estado |
      | C001 | Disponible |

    When otro conductor realiza una reserva

    Then el sistema actualiza la información automáticamente

  Scenario: Espacio ocupado

    Given la siguiente cochera

      | Cochera | Estado |
      | C003 | Ocupada |

    When el usuario intenta seleccionarla

    Then el sistema informa que el espacio ya no está disponible
