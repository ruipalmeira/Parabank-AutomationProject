@LoginSystem
Feature: Parabank Website Login System Test
  As an unregistered Parabank user,
  I want to browse the website,
  So I can register an account,
  So I can use banking features.

  Background: Parabank Website is up and reachable
    Given User go to "https://parabank.parasoft.com/parabank/index.htm"
    Then User see Parabank home page

  Scenario: Register Account in Parabank Website
    Given User clicks "Register"
    Then User must see "Register" page
    Then User must fill First Name field with 'Rui'
    Then User must fill Last Name field with 'Palmeira'
    Then User must fill Address field with 'Rua da Boavista'
    Then User must fill City field with 'Braga'
    Then User must fill State field with 'Braga' 
    Then User must fill ZipCode field with '4700'
    Then User must fill Phone # field with '912345678'
    Then User must fill SSN field with '1234567'
    Then User must fill Username field with "rpalmeira"
    Then User must fill Password field with "1234"
    Then User must fill Confirm field with "1234"
    Then User must click Register button 

  Scenario: Login to Account in Parabank Website
    Given User must fill login Username field 'rpalmeira'
    Then User must fill login Password field with '1234'
    Then User must click Login button
    Then User must see Bank account page   
