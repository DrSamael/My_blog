Feature: Is it friday yet?
  Everybody wants to know when it's Friday

  Scenario Outline: Today is or is not Friday
    Given today is "<day>"
    When I asked whether is Friday yet
    Then I should be told "<answer>"

    Examples:
      |day         |answer    |
      |Friday      |Yep       |
      |anything    |Nope      |
