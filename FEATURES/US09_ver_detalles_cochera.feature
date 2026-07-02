# Epic: EP02 - Búsqueda y Reserva de Estacionamientos
# User Story: US09 - Ver detalles de cochera

Feature: Ver detalles de cochera

  Como conductor
  Quiero consultar información detallada de una cochera
  Para decidir si la reservo

  Scenario: Consulta de detalles

    Given la cochera tiene la siguiente información

      | Dirección | Precio | Horario |
      | Av. La Marina 120 | S/10 | 08:00-22:00 |

    When el usuario accede a la vista detallada

    Then el sistema muestra dirección, precio, horario y calificaciones

  Scenario: Visualización de fotografías

    Given la cochera contiene las siguientes imágenes

      | Imagen    |
      | foto1.jpg |
      | foto2.jpg |

    When el usuario accede a los detalles

    Then el sistema muestra las fotografías disponibles

  Scenario: Información incompleta

    Given la cochera presenta la siguiente información

      |   Dirección      |Precio  | Horario |
      | Av. Universitaria | S/12 | Vacío |

    When el usuario visualiza los detalles

    Then el sistema indica que parte de la información no está disponible
