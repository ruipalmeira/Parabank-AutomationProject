Feature: Parabank Website Login System Test
  As an registered Parabank user,
  I want to browse the website,
  So I can use banking features.

  Background: Parabank Website is up and reachable
    Given User opens a new browser
    When User go to "https://parabank.parasoft.com/parabank/index.htm"
    Then User must see Parabank home page

  Scenario: Login to Account in Parabank Website
    Given User must fill login Username field 'rpalmeira'
    Then User must fill login Password field with '1234'
    Then User must click Login button
    Then User must see Bank Account page
