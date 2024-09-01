Feature: Agregar Mascota

  @CrearNuevaMascota
  Scenario: Agregar una nueva mascota a la tienda
    Given url "https://petstore.swagger.io/v2/pet"
    And request { "id": 777, "category": { "id": 777, "name": "reptile" }, "name": "Lacoste", "photoUrls": [ "https://definicion.de/lagarto/" ], "tags": [ { "id": 777, "name": "Reptil Feliz" } ], "status": "available" }
    When method post
    Then status 200
    And def animalId = $.id