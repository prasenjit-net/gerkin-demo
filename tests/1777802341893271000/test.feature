Feature: Example
  Scenario: Example
    Given url "https://httpbin.org/get"
    When method GET
    Then status 200