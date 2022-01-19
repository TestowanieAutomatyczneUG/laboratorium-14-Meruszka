Feature: ISBN
  Function generating ISNB number

  Scenario Outline: ISBN
    Given we have a ISBN gen
    When the given number is <number>
    Then the result is <result>

    Examples:
      | number               | result  |
      |   978-83-89405-00-5  |  0  |
      |   978-83-7181-510-2  |  0  |
      |   978-3-43-148410-0  | 1 |