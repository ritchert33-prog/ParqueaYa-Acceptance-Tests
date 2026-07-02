# Epic: EP03 - Gestión de Cochera y Pagos
# User Story: US15 - Configurar precios

Feature: Configurar precios

  Como propietario
  Quiero establecer tarifas
  Para generar ingresos según mis condiciones

  Scenario: Registro de precio

    Given existe la siguiente cochera

      | Cochera |
      | C001 |

    When registra la siguiente tarifa

      | Precio Hora |
      | S/12 |

    Then el sistema guarda el precio correctamente

  Scenario: Actualización de precio

    Given existe la siguiente tarifa

      | Precio Hora |
      | S/10 |

    When registra la nueva tarifa

      | Precio Hora |
      | S/15 |

    Then el sistema actualiza la información

  Scenario: Precio inválido

    Given el propietario registra

      | Precio Hora |
      | -5 |

    When intenta guardar la tarifa

    Then el sistema muestra un mensaje de validación
