Feature: Agregar Mascota

  @CrearNuevaMascota
  Scenario: Agregar una nueva mascota a la tienda
    Given url "https://petstore.swagger.io/v2/pet"
    * def requestPayload = read('../datos/dataAgregar.json')
    And request requestPayload
    When method post
    Then status 200
    And def animalId = $.id
