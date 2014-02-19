Feature: Login feature
  As an android developer
  I want to have a sample feature file
  So I can begin testing quickly
  
  Scenario: I can start my app and take main screen's picture
    Given I start my app
    Then I see main menu
    Then I take a nice picture of my main screen

  Scenario: I want to test random number array feature of my app
    Given I want to use Counting Sort feature
    Then I enter number of digits i want to sort
    Then I want to get a new random number array

  Scenario: I want to test TimSort feature
    Given I want to use TimSort feature
    Then I want use TimSort to sort 6 numbers
    But I dont like this number array, so I chose a new number array
    Then I see number array after timsort and sort steps

  Scenario: Test Merge Sort feature and scroll down
    Given I want to use MergeSort feature
    Then I want to use MergeSort to sort 9 numbers
    And I see random number array, I like it so I want to use it
    Then I see number array after merge sort and sort steps s
  
