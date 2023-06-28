
@editor @editor_tiny @tiny_cloze
Feature: Add interface to Cloze question type syntax

  Background:
    Given the following "users" exist:
        | username | firstname | lastname | email               |
        | teacher  | Mark      | Allright | teacher@example.com |
    And the following "courses" exist:
        | fullname | shortname | category |
        | Course 1 | C1        | 0        |
    And the following "course enrolments" exist:
        | user    | course | role           |
        | teacher | C1     | editingteacher |
    Given the following "user preferences" exist:
        | user    | preference | value |
        | teacher | htmleditor | tiny  |

  @javascript
  Scenario: Create a Cloze question
    When I am on the "Course 1" "core_question > course question bank" page logged in as teacher
    And I press "Create a new question ..."
    And I set the field "Embedded answers (Cloze)" to "1"
    And I click on "Add" "button" in the "Choose a question type to add" "dialogue"
    And I click on "Cloze question editor" "button"
    And I set the field "SHORTANSWER" to "1"
    And I click on "Select question type" "button"
    And I should see "Select question type"
