Feature: Consulta de Mascota por Identificador

  Scenario: Consulta de Mascota por ID
    * call read("../post/agregar-mascota.feature@CrearNuevaMascota")
    Given url "https://petstore.swagger.io/v2/pet/" + animalId
    When method get
    Then status 200
    And match $ contains { id: "#(animalId)" }
