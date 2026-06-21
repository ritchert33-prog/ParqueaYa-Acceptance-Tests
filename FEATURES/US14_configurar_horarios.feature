# Epic: EP03 - Gestión de Cochera y Pagos
# User Story: US14 - Configurar horarios

Feature: Configurar horarios
  Como propietario
  Quiero definir horarios de disponibilidad
  Para controlar el uso de mi cochera

  Scenario: Configuración exitosa
    Given el propietario tiene una cochera registrada
    When define horarios de disponibilidad
    Then el sistema guarda la configuración correctamente

  Scenario: Modificación de horarios
    Given existen horarios registrados
    When el propietario actualiza los horarios
    Then el sistema guarda los nuevos valores

  Scenario: Horario inválido
    Given el propietario configura horarios inconsistentes
    When intenta guardar la información
    Then el sistema muestra una advertencia
