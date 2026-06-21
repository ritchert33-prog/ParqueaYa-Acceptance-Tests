# Epic: EP03 - Gestión de Cochera y Pagos
# User Story: US23 - Calificar conductor

Feature: Calificar conductor
  Como propietario
  Quiero calificar a los conductores
  Para identificar usuarios confiables

  Scenario: Calificación de conductor exitosa
    Given una reserva ha finalizado correctamente
    When el propietario califica al conductor
    Then el sistema registra la valoración en su perfil

  Scenario: Visualización de reputación
    Given un conductor posee calificaciones registradas
    When un propietario consulta su perfil
    Then el sistema muestra su reputación y comentarios

  Scenario: Restricción de calificación
    Given no existe una reserva completada entre ambas partes
    When el propietario intenta calificar al conductor
    Then el sistema impide la acción y muestra una notificación
