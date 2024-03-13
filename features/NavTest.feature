@NavSystem
Feature: Parabank Website Navigation
  As a Parabank user,
  I want to browse the website,
  So I can check website functionality.

  Background: Parabank Website is up and reachable
    Given User opens a new browser
    When User go to "https://parabank.parasoft.com/parabank/index.htm"
    Then User must see Parabank home page

  Scenario: Navigate Parabank website
    Given User clicks "About Us"
    Then User must see "About Us" page
    Given User clicks "Services"
    Then User must see "Services" page
    Given User clicks "Products"
    Then User must see "Products" page
    Then User must go to "https://parabank.parasoft.com/parabank/index.htm"
    Given User clicks "Admin Page"
    Then User must see "Admin Page" page
