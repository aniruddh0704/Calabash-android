Feature: Login
  @Valid
  Scenario: Login to the app
  Given my app is running
  And I wait for "eribank" to appear
  Then I enter "company" into field with id "usernameTextField"
  And I enter "company" into field with id "passwordTextField"
  And wait 2 seconds
  Then take picture
  Then I press button with id "loginButton"
  And wait 3 seconds 
  And I wait for the "Make Payment" button to appear
  Then take picture

  @Logout
  Scenario: Log-out to the app
  Given my app is running
  And I wait for "eribank" to appear
  Then I enter "company" into field with id "usernameTextField"
  And I enter "company" into field with id "passwordTextField"
  Then I press button with id "loginButton"
  And I wait for the "Make Payment" button to appear
  And I press button with id "logoutButton"
  Then take picture

  @Invalid
  Scenario: Invalid Login to the app
  Given my app is running
  And I wait for "eribank" to appear
  Then I enter "XYZ" into field with id "usernameTextField"
  And I enter "XYZ" into field with id "passwordTextField"
  Then I hide keyboard
  And take picture
  Then I press button with id "loginButton"
  Then I see error message
  Then take picture
  
  @Payment
  Scenario: Make Payment Screen
  Given my app is running
  And I wait for "eribank" to appear
  Then I enter "company" into field with id "usernameTextField"
  And I enter "company" into field with id "passwordTextField"
  Then I press button with id "loginButton"
  And I wait for the "Make Payment" button to appear
  And wait 2 seconds
  Then I press button with id "makePaymentButton"
  And I wait for the "Cancel" button to appear
  Then I press button with id "cancelButton"
  And wait 3 seconds
  And I press button with id "logoutButton"

  @Fill
  Scenario: Make Payment Screen filling 
  Given my app is running
  And I wait for "eribank" to appear
  Then I enter "company" into field with id "usernameTextField"
  And I enter "company" into field with id "passwordTextField"
  Then take picture
  Then I press button with id "loginButton"
  And I wait for the "Make Payment" button to appear
  Then I press button with id "makePaymentButton"
  And I wait for the "Cancel" button to appear
  Then I enter "9874563210" into field with id "phoneTextField"
  And I enter "UserName" into field with id "nameTextField"
  Then I drag field with id "amount"
  Then I enter "India" into field with id "countryTextField"
  And wait 2 seconds
  Then take picture
  Then I press button with id "sendPaymentButton"
  And wait 4 seconds
  Then take picture


  @country
  Scenario: Contry scroll
  Given my app is running
  And I wait for "eribank" to appear
  Then I enter "company" into field with id "usernameTextField"
  And I enter "company" into field with id "passwordTextField"
  Then take picture
  Then I press button with id "loginButton"
  And I wait for the "Make Payment" button to appear
  Then I press button with id "makePaymentButton"
  And I wait for the "Cancel" button to appear
  Then I enter "9874563210" into field with id "phoneTextField"
  And I enter "UserName" into field with id "nameTextField"
  Then I drag field with id "amount"
  And I press button with id "countryButton"
  Then I scroll down
  And wait 2 seconds
  Then take picture
  And I press list item number 1
  And wait 2 seconds
  Then I press button with id "sendPaymentButton"
  And wait 4 seconds
  Then take picture


  @No
  Scenario: No to Pop up message 
  Given my app is running
  And I wait for "eribank" to appear
  Then I enter "company" into field with id "usernameTextField"
  And I enter "company" into field with id "passwordTextField"
  Then take picture
  Then I press button with id "loginButton"
  And I wait for the "Make Payment" button to appear
  Then I press button with id "makePaymentButton"
  And I wait for the "Cancel" button to appear
  Then I enter "9874563210" into field with id "phoneTextField"
  And I enter "UserName" into field with id "nameTextField"
  Then I drag field with id "amount"
  And I press button with id "countryButton"
  And wait 2 seconds
  Then take picture
  And I press list item number 1
  And wait 2 seconds
  Then I press button with id "sendPaymentButton"
  And wait 4 seconds
  Then I press button with id "button2"
  Then take picture

  @Yes
  Scenario: Yes to Pop up message 
  Given my app is running
  And I wait for "eribank" to appear
  Then I enter "company" into field with id "usernameTextField"
  And I enter "company" into field with id "passwordTextField"
  Then take picture
  Then I press button with id "loginButton"
  And I wait for the "Make Payment" button to appear
  Then I press button with id "makePaymentButton"
  And I wait for the "Cancel" button to appear
  Then I enter "9874563210" into field with id "phoneTextField"
  And I enter "UserName" into field with id "nameTextField"
  Then I drag field with id "amount"
  And I press button with id "countryButton"
  And wait 2 seconds
  Then take picture
  And I press list item number 1
  And wait 2 seconds
  Then I press button with id "sendPaymentButton"
  And wait 4 seconds
  Then I press button with id "button1"
  And wait 3 seconds
  Then take picture
  And I press button with id "logoutButton"
  And wait 2 seconds
  Then take picture
  
  
  @balance
  Scenario: balance Verify  
  Given my app is running
  And I wait for "eribank" to appear
  Then I enter "company" into field with id "usernameTextField"
  And I enter "company" into field with id "passwordTextField"
  Then I press button with id "loginButton"
  And I wait for the "Make Payment" button to appear
  Then I press button with id "makePaymentButton"
  And I wait for the "Cancel" button to appear
  Then I enter "9874563210" into field with id "phoneTextField"
  And I enter "UserName" into field with id "nameTextField"
  Then I drag field with id "amount"
  And I press button with id "countryButton"
  And wait 2 seconds
  And I press list item number 1
  And wait 2 seconds
  Then I press button with id "sendPaymentButton"
  And wait 4 seconds
  Then I press button with id "button1"
  And wait 3 seconds
  Then wait for text "Your balance is :" to appear