Feature: Set loading="eager"
  Scenario: Should add 'eager'
    Given a successfully built app at "eager-app"
    When I cd to "build"
    Then the file "index.html" should contain:
      """
      loading="eager"
      """
