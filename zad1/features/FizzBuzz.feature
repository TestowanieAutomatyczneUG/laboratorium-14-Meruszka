Feature: FizzBuzz
  Class implements a FizzBuzz problem.
  %5 -> Buzz
  %3 -> Fizz
  %15 -> FizzBuzz
  rest -> number given

  Scenario Outline: Typical FizzBuzz
    Given we have a FizzBuzz
    When the given number is <number>
    Then the result is <result>

    Examples:
      | number | result  |
      |   5  |  Buzz  |
      |   3  |  Fizz  |
      |   15 | FizzBuzz |