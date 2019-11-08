Feature: Set loading="auto"
  Scenario: Should add 'auto'
    Given a successfully built app at "auto-app"
    When I cd to "build"
    Then the file "index.html" should contain:
      """
      <img loading="auto"
      """
