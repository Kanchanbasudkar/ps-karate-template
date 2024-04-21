Feature: Get all categories
  Background:
    * url 'http://localhost:8090/api'

  Scenario: list all categories
    Given path 'category'
    When method Get
    Then status 200
