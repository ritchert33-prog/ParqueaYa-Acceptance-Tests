# Epic: EP02 - Búsqueda y Reserva de Estacionamientos
# User Story: US08 - Visualizar ubicación en mapa

Feature: Visualizar ubicación en mapa

  Como conductor
  Quiero ver los estacionamientos en un mapa
  Para ubicarme fácilmente

  Scenario: Visualización exitosa

    Given existen las siguientes cocheras

      | Cochera | Latitud | Longitud |
      | C001 | -12.071 | -77.085 |
      | C002 | -12.069 | -77.081 |

    When el usuario accede al mapa

    Then el sistema muestra las ubicaciones disponibles

  Scenario: Selección de cochera

    Given el mapa contiene

      | Cochera |
      | C001 |
      | C002 |

    When el usuario selecciona un marcador

    Then el sistema muestra la información detallada del espacio

  Scenario: Error de geolocalización

    Given el dispositivo presenta el siguiente estado

      | GPS |
      | Sin señal |

    When el usuario intenta acceder al mapa

    Then el sistema muestra una advertencia
