Feature: Get all products
  Background:
    * url 'http://localhost:8090/api/'
  Scenario: User need to get all products info
    Given path 'product'
    When method Get
    Then status 200