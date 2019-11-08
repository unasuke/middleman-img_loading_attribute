Feature: Set loading="lazy" with asset_hash
  Scenario: Should add 'lazy'
    Given a successfully built app at "lazy-app"
    When I cd to "build"
    Then the file "index.html" should contain:
      """
      <img loading="lazy" src="/images/1x1-0ec63b14.png"
      """
