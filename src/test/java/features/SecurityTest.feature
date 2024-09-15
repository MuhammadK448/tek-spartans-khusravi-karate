Feature: API testing for Security Functions

  Scenario: Valid token with valid credentials
    Given url 'https://dev.insurance-api.tekschool-students.com'
    Given path '/api/token'
    Given request
    # 3 double quot is used for multi line body
    """
    {
      "username": "supervisor",
      "password": "tek_supervisor"
    }
    """
    When method post
    Then status 200