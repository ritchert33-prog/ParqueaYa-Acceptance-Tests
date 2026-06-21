# Epic: EP03 - Gestión de Cochera y Pagos
# User Story: US15 - Configurar precios

Feature: Configurar precios
  Como propietario
  Quiero establecer tarifas
  Para generar ingresos según mis condiciones

  Scenario: Registro de precio
    Given el propietario administra una cochera publicada
    When establece una tarifa por hora
    Then el sistema guarda el precio correctamente

  Scenario: Actualización de precio
    Given la cochera posee una tarifa registrada
    When el propietario modifica el precio
    Then el sistema actualiza la información

  Scenario: Precio inválido
    Given el propietario ingresa un valor incorrecto
    When intenta guardar la tarifa
    Then el sistema muestra un mensaje de validación
