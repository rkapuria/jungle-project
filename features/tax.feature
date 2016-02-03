Feature: As a customer to Jungle socks I would like to purchase a product and checkout


  Scenario Outline: Calculate and verify tax for each state in America
    Given I am on jungle socks page
    And I enter quantities for zebra as "<z_qty>", lion as "<l_qty>", elephant as "<e_qty>" and giraffe as "<g_qty>"
    And I select state as "<state>"
    When I submit the page
    Then I should see tax is calculated as per "<tax_value>"
  Examples:
    | z_qty | l_qty | e_qty | g_qty | state         | tax_value |
    | 5     | 2     | 1     | 7     | California    | 8         |
    | 2     | 1     | 9     | 2     | New York      | 6         |
    | 1     | 9     | 4     | 1     | Minnesota     | 0         |
    | 10    | 8     | 3     | 4     | Ohio          | 5         |