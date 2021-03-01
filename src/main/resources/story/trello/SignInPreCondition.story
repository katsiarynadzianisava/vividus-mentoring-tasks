Scenario: SignInPreCondition
Given I am on the main application page
When I click on an element by the xpath '//a[text()='Log in']' 
When I enter '${user}' in a field by the xpath '//input[@name='user']'
When I click on an element by the xpath '//input[@id='login']'
When I wait until an element with the xpath '//input[@id='password']' appears
When I enter '${password}' in a field by the xpath '//input[@id='password']'
When I click on an element by the xpath '//button[@id='login-submit']'