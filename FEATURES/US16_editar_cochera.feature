# Epic: EP03 - Gestión de Cochera y Pagos
# User Story: US16 - Editar información de cochera

Feature: Editar información de cochera
  Como propietario
  Quiero actualizar los datos de mi cochera
  Para mantener la información correcta

  Scenario: Edición exitosa
    Given el propietario tiene una cochera registrada
    When modifica la información de la cochera
    Then el sistema actualiza los datos correctamente

  Scenario: Actualización de fotografías
    Given el propietario desea mejorar la información de su cochera
    When carga nuevas fotografías
    Then el sistema actualiza las imágenes mostradas

  Scenario: Error en la actualización
    Given existe un problema durante la edición
    When el propietario intenta guardar los cambios
    Then el sistema muestra una notificación de error
