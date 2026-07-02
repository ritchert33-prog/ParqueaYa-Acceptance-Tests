# Epic: EP02 - Búsqueda y Reserva de Estacionamientos
# User Story: US10 - Reservar estacionamiento

Feature: Reservar estacionamiento

  Como conductor
  Quiero reservar una cochera
  Para asegurar mi espacio antes de llegar

  Scenario: Reserva exitosa

    Given existen las siguientes cocheras

      | Cochera | Estado | Precio |
      | C001 | Disponible | S/10 |
      | C002 | Disponible | S/12 |

    When el conductor registra la siguiente reserva

      | Cochera | Fecha | Hora |
      | C001 | 20/07/2026 | 09:00 |

    Then el sistema registra la reserva y envía una confirmación

  Scenario: Cochera ocupada

    Given la siguiente cochera

      | Cochera | Estado |
      | C003 | Ocupada |

    When el conductor intenta reservarla

    Then el sistema informa que ya no está disponible

  Scenario: Reserva registrada en historial

    Given existe la siguiente reserva

      | Código | Cochera | Estado |
      | R001 | C001 | Confirmada |

    When el conductor consulta su historial

    Then el sistema muestra la nueva reserva registrada
