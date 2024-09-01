Feature: Eliminar orden de compra

  Background:
    * url 'https://petstore.swagger.io/v2'

  Scenario: Eliminar una orden de compra por ID
    Given def orderId = 1
    And path '/store/order/'+orderId
    When method delete
    Then status 200


