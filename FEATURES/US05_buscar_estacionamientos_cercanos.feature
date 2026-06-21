# Epic: EP02 - Búsqueda y Reserva de Estacionamientos
# User Story: US05 - Buscar estacionamientos cercanos

Feature: Buscar estacionamientos cercanos
  Como conductor
  Quiero visualizar estacionamientos cercanos
  Para encontrar rápidamente un espacio disponible

  Scenario: Búsqueda exitosa
    Given el conductor permite el acceso a su ubicación
    When realiza una búsqueda
    Then el sistema muestra las cocheras cercanas disponibles

  Scenario: Sin resultados
    Given no existen cocheras disponibles en la zona seleccionada
    When el conductor realiza una búsqueda
    Then el sistema informa que no existen espacios disponibles

  Scenario: Ubicación desactivada
    Given el GPS del dispositivo está desactivado
    When el usuario intenta buscar estacionamientos cercanos
    Then el sistema solicita habilitar la ubicación
