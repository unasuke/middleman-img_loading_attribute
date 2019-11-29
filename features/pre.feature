Feature: Didn't Set loading="lazy"
  Scenario: Should add 'pre'
    Given a successfully built app at "pre-app"
    When I cd to "build"
    Then the file "index.html" should not contain:
      """
      loading="lazy"
      """
