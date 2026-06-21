# Epic: EP03 - Gestión de Cochera y Pagos
# User Story: US22 - Calificar cochera

Feature: Calificar cochera
  Como conductor
  Quiero calificar el servicio recibido
  Para ayudar a otros usuarios

  Scenario: Calificación exitosa
    Given el conductor ha finalizado una reserva
    When asigna una calificación y un comentario
    Then el sistema registra la valoración correctamente

  Scenario: Visualización de calificación
    Given una cochera ha recibido valoraciones
    When otros conductores consultan sus detalles
    Then el sistema muestra la calificación promedio

  Scenario: Intento de calificación sin reserva
    Given el conductor no ha utilizado la cochera
    When intenta dejar una calificación
    Then el sistema restringe la acción y muestra una advertencia
