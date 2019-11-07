Feature: Auto
  Scenario: Should add 'eager'
    Given a successfully built app at "eager-app"
    When I cd to "build"
    Then the file "index.html" should contain:
      """
      <img loading="eager" src="/images/1x1.png"
      """
