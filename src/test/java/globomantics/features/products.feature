Feature: Get all products
  Background:
    * url 'http://localhost:8090/api/'
  Scenario: User need to get all products info
    Given path 'product'
    When method Get
    Then status 200


  Scenario: User need to get all products info by catergory Id
    * def query = {category:'1'}
    Given path 'product'
    And params query
    When method Get
    Then status 200



