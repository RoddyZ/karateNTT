Feature: Consulta de Mascota por Estado

  Scenario: Consulta de Mascota por Estado
    * call read("../post/actualizar-mascota.feature@ActualizarEstadoMascota")
    Given url "https://petstore.swagger.io/v2/pet/findByStatus?status=" + estadoId
    When method get
    Then status 200
    And match $ contains deep { id: "#(idAnimal)" }
    And match $ contains deep { status: "#(estadoId)" }