# Epic: EP02 - Búsqueda y Reserva de Estacionamientos
# User Story: US06 - Filtrar estacionamientos

Feature: Filtrar estacionamientos
  Como conductor
  Quiero filtrar estacionamientos por precio y distancia
  Para elegir la mejor opción

  Scenario: Filtrar por precio
    Given existen resultados de búsqueda disponibles
    When el usuario selecciona un rango de precios
    Then el sistema muestra únicamente las cocheras que cumplen dicho criterio

  Scenario: Filtrar por distancia
    Given existen resultados de búsqueda
    When el usuario aplica un filtro de distancia
    Then el sistema actualiza la lista de estacionamientos cercanos

  Scenario: Limpiar filtros
    Given existen filtros aplicados
    When el usuario selecciona la opción limpiar filtros
    Then el sistema vuelve a mostrar todos los resultados disponibles.
