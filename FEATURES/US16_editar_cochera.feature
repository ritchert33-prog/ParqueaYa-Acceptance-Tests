# Epic: EP03 - Gestión de Cochera y Pagos
# User Story: US16 - Editar información de cochera
Feature: Editar información de cochera

  Como propietario
  Quiero actualizar los datos de mi cochera
  Para mantener la información correcta

  Scenario: Edición exitosa

    Given el propietario tiene registrada la siguiente cochera

      | Cochera | Dirección | Precio |
      | C001 | Av. La Marina 500 | S/10 |

    When modifica la información

      | Dirección | Precio |
      | Av. La Marina 520 | S/12 |

    Then el sistema actualiza los datos correctamente

  Scenario: Actualización de fotografías

    Given la cochera posee las siguientes imágenes

      | Imagen |
      | foto1.jpg |
      | foto2.jpg |

    When el propietario carga

      | Imagen Nueva |
      | foto3.jpg |

    Then el sistema actualiza las imágenes mostradas

  Scenario: Error en la actualización

    Given existe la siguiente cochera

      | Cochera |
      | C001 |

    When ocurre un error durante el guardado

    Then el sistema muestra una notificación de error
