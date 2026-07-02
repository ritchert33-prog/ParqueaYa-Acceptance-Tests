# Epic: EP02 - Búsqueda y Reserva de Estacionamientos
# User Story: US05 - Buscar estacionamientos cercanos

Feature: Buscar estacionamientos cercanos

  Como conductor
  Quiero visualizar estacionamientos cercanos
  Para encontrar rápidamente un espacio disponible

  Scenario: Búsqueda exitosa

    Given existen las siguientes cocheras

      | Cochera | Distrito | Disponible |
      | C001 | San Miguel | Sí |
      | C002 | Pueblo Libre | Sí |
      | C003 | Magdalena | No |

    When el conductor realiza una búsqueda

    Then el sistema muestra las cocheras cercanas disponibles

  Scenario: Sin resultados

    Given existen las siguientes cocheras

      | Cochera | Distrito | Disponible |
      | C010 | Surco | No |
      | C011 | Surco | No |

    When el conductor realiza una búsqueda

    Then el sistema informa que no existen espacios disponibles

  Scenario: Ubicación desactivada

    Given el estado del GPS es

      | GPS |
      | Desactivado |

    When el usuario intenta buscar estacionamientos cercanos

    Then el sistema solicita habilitar la ubicación
