Feature: pre-commit

  # TODO(cyrille): Add real tests.
  Background:
    Given I use the defined hook "pre-commit"

  Scenario: Successful commit when
    Given I am in a dummy git repo in "repo"
    When I commit a file "successful submission" with message:
      """
      [Topic] Message subject.
      """
    Then the exit status should be 0
    And I should be on "main" git branch
    And the file "successful submission" should exist
    And the git status should be clean
