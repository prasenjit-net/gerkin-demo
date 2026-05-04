Feature: Happy path for Widget Catalog Test API
  
  Background:
    # Base URL is expected to be configured in karate-config.js as 'baseUrl'
    * url baseUrl

  @happy
  Scenario: Create a new widget and verify it appears in the widget list
    Given path 'widgets'
    And request { name: 'Premium Widget', status: 'active', price: 49.95 }
    When method post
    Then status 201

    # List widgets with status filter to verify the created widget is present
    Given path 'widgets'
    And param status = 'active'
    When method get
    Then status 200