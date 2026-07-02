# Epic: EP03 - Gestión de Cochera y Pagos
# User Story: US14 - Configurar horarios

Feature: Configurar horarios

  Como propietario
  Quiero definir horarios de disponibilidad
  Para controlar el uso de mi cochera

  Scenario: Configuración exitosa

    Given existe la siguiente cochera

      | Cochera |
      | C001 |

    When configura el siguiente horario

      | Inicio | Fin |
      | 08:00 | 20:00 |

    Then el sistema guarda la configuración correctamente

  Scenario: Modificación de horarios

    Given existe el siguiente horario

      | Inicio | Fin |
      | 08:00 | 18:00 |

    When actualiza el horario

      | Inicio | Fin |
      | 09:00 | 22:00 |

    Then el sistema guarda los nuevos valores

  Scenario: Horario inválido

    Given el propietario registra

      | Inicio | Fin |
      | 20:00 | 08:00 |

    When intenta guardar la información

    Then el sistema muestra una advertencia
