Feature: Actualizar Mascota

  @ActualizarEstadoMascota
  Scenario Outline: Actualizar el nombre de la mascota y el estatus de la mascota
    * call read("../post/agregar-mascota.feature@CrearNuevaMascota")
    * def data = read('../datos/dataActualizar.json')
    * def name = data[<index>].name
    * def estado = data[<index>].estado
    Given url "https://petstore.swagger.io/v2/pet/" + animalId
    And form field name = name
    And form field status = estado
    When method post
    Then status 200
    And def estadoId = estado
    And def idAnimal = animalId

    Examples:
      | index |
      | 0     |
