Feature: Get all categories

  Background:
    * url 'http://localhost:8090/api'

    Given path 'authenticate'
    And request '{"username": "admin","password": "admin"}'
    And header Content-Type = 'application/json'
    When method Post
    Then status 200
    * def token = response.token
    * print 'token value is: ' + token

  Scenario: list all categories
    Given path 'category'
    When method Get
    Then status 200


#  Scenario: Create new category
#    Given path 'category'
#    When method Post
#    Then status 200
