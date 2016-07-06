#encoding: utf-8
Feature:  Counting with Fizzbuzz style is any number divisible by three is replaced
          by the word fizz and any divisible by five by the word buzz. Numbers divisible
          by both become fizz buzz.

  Scenario Outline: Fizz
    Given We want to count <number>
    And it divisible by 3
    But not 5
    When I count with Fizzbuzz
    Then I count 'Fizz'

    Examples:
    | number  |
    | 3       |
    | 6       |
    | 9       |

  Scenario Outline: Bizz
    Given We want to count <number>
    And it is not divisible by 3
    But 5
    When I count with Fizzbuzz
    Then I count 'Buzz'

    Examples:
    | number    |
    | 5         |
    | 10        |
    | 20        |

  Scenario Outline: Normal Number
    Given We want to count with Fizzbuzz
    When <number> is not divisible with both 3 and 5
    Then we will be counted as <number_as_string>

    Examples:
    | number  | number_as_string  |
    | 1       | '1'               |
    | 4       | '4'               |
    | 8       | '8'               |
