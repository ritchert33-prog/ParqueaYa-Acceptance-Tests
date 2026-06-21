# Epic: EP03 - Gestión de Cochera y Pagos
# User Story: US13 - Publicar cochera

Feature: Publicar cochera
  Como propietario
  Quiero registrar mi cochera
  Para ofrecerla a conductores interesados

  Scenario: Publicación exitosa
    Given el propietario ha iniciado sesión
    When registra los datos de su cochera
    Then el sistema publica el espacio para los conductores

  Scenario: Datos incompletos
    Given el propietario intenta publicar una cochera
    When deja campos obligatorios vacíos
    Then el sistema muestra mensajes de validación

  Scenario: Visualización de publicación
    Given la cochera fue registrada correctamente
    When el propietario consulta sus publicaciones
    Then el sistema muestra la cochera en la lista de espacios publicados
