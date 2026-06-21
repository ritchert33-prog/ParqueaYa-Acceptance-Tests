# Epic: EP01 - Cuentas y Seguridad (US no funcional seleccionada por prioridad)
# User Story: US04 - Verificar identidad
# Naturaleza: No funcional (seguridad / confianza)

Feature: Verificar identidad
  Como propietario
  Quiero verificar mi identidad
  Para generar confianza en los usuarios

  Scenario: Verificación exitosa
    Given el propietario ha iniciado sesión
    When carga correctamente sus documentos de identidad
    Then el sistema valida la información y marca la cuenta como verificada

  Scenario: Documento ilegible
    Given el propietario intenta verificar su identidad
    When carga documentos borrosos o incompletos
    Then el sistema solicita volver a cargarlos

  Scenario: Documento no válido
    Given el propietario carga documentación incorrecta
    When el sistema realiza la validación
    Then la solicitud es rechazada y se muestra una notificación
