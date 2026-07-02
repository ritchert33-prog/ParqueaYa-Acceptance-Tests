# Epic: EP03 - Gestión de Cochera y Pagos
# User Story: US13 - Publicar cochera

Feature: Publicar cochera

  Como propietario
  Quiero registrar mi cochera
  Para ofrecerla a conductores interesados

  Scenario: Publicación exitosa

    Given el propietario inicia sesión

    When registra la siguiente cochera

      | Dirección | Precio | Horario |
      | Av. La Marina 500 | S/10 | 08:00-20:00 |

    Then el sistema publica el espacio para los conductores

  Scenario: Datos incompletos

    Given el propietario registra

      | Dirección | Precio | Horario |
      |           | S/10   |         |

    When intenta publicar

    Then el sistema muestra mensajes de validación

  Scenario: Visualización de publicación

    Given existe la siguiente cochera

      | Dirección |
      | Av. La Marina 500 |

    When consulta sus publicaciones

    Then el sistema muestra la cochera en la lista de espacios publicados
