# Epic: EP03 - Gestión de Cochera y Pagos
# User Story: US22 - Calificar cochera

Feature: Calificar cochera

  Como conductor
  Quiero calificar el servicio recibido
  Para ayudar a otros usuarios

  Scenario: Calificación exitosa

    Given el conductor ha finalizado la siguiente reserva

      | Reserva | Cochera | Estado |
      | R001 | C001 | Finalizada |

    When registra la siguiente calificación

      | Puntuación | Comentario |
      | 5          | Excelente servicio y seguridad |

    Then el sistema registra la valoración correctamente

  Scenario: Visualización de calificación

    Given la cochera posee las siguientes valoraciones

      | Usuario | Puntuación |
      | Juan | 5 |
      | María | 4 |
      | Pedro | 5 |

    When otros conductores consultan sus detalles

    Then el sistema muestra la calificación promedio

  Scenario: Intento de calificación sin reserva

    Given el conductor presenta el siguiente historial

      | Reserva |
      | Ninguna |

    When intenta dejar una calificación

    Then el sistema restringe la acción y muestra una advertencia
