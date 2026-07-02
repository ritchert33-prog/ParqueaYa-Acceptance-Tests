# Epic: EP03 - Gestión de Cochera y Pagos
# User Story: US23 - Calificar conductor

Feature: Calificar conductor

  Como propietario
  Quiero calificar a los conductores
  Para identificar usuarios confiables

  Scenario: Calificación de conductor exitosa

    Given existe la siguiente reserva

      | Reserva | Conductor | Estado |
      | R001 | Juan Pérez | Finalizada |

    When el propietario registra

      | Puntuación | Comentario |
      | 5 | Puntual y responsable |

    Then el sistema registra la valoración en su perfil

  Scenario: Visualización de reputación

    Given el conductor posee las siguientes calificaciones

      | Propietario | Puntuación |
      | Luis        |     5      |
      | Carlos      |     4      |
      | Ana         |     5      |

    When un propietario consulta su perfil

    Then el sistema muestra su reputación y comentarios

  Scenario: Restricción de calificación

    Given no existe una reserva finalizada

      | Reserva |
      | Ninguna |

    When el propietario intenta calificar al conductor

    Then el sistema impide la acción y muestra una notificación
