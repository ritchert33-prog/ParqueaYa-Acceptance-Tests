# Epic: EP02 - Búsqueda y Reserva de Estacionamientos
# User Story: US06 - Filtrar estacionamientos

Feature: Filtrar estacionamientos

  Como conductor
  Quiero filtrar estacionamientos por precio y distancia
  Para elegir la mejor opción

  Scenario: Filtrar por precio

    Given existen los siguientes estacionamientos

      | Cochera | Precio |
      | C001    | 8      |
      | C002    | 10     |
      | C003    | 15     |

    When el usuario selecciona el rango

      | Mínimo | Máximo |
      | 8      | 10 |

    Then el sistema muestra únicamente las cocheras que cumplen dicho criterio

  Scenario: Filtrar por distancia

    Given existen los siguientes estacionamientos

      | Cochera | Distancia |
      | C001 | 300 m |
      | C002 | 700 m |
      | C003 | 1 km |

    When el usuario aplica el filtro

      | Distancia máxima |
      | 500 m |

    Then el sistema actualiza la lista de estacionamientos cercanos

  Scenario: Limpiar filtros

    Given existen los siguientes filtros

      | Precio |
      | Distancia |

    When el usuario selecciona limpiar filtros

    Then el sistema vuelve a mostrar todos los resultados disponibles
