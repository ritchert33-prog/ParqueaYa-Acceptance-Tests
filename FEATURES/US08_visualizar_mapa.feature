# Epic: EP02 - Búsqueda y Reserva de Estacionamientos
# User Story: US08 - Visualizar ubicación en mapa

Feature: Visualizar ubicación en mapa
  Como conductor
  Quiero ver los estacionamientos en un mapa
  Para ubicarme fácilmente

  Scenario: Visualización exitosa
    Given existen cocheras registradas en la plataforma
    When el usuario accede al mapa
    Then el sistema muestra las ubicaciones disponibles

  Scenario: Selección de cochera
    Given el usuario visualiza el mapa
    When selecciona un marcador de cochera
    Then el sistema muestra la información detallada del espacio

  Scenario: Error de geolocalización
    Given la ubicación del dispositivo no está disponible
    When el usuario intenta acceder al mapa
    Then el sistema muestra una advertencia
