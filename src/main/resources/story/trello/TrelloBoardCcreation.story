Scenario: Trello Board creation using API  

Given I am on the main application page
When I click on an element by the xpath '//a[text()='Log in']' 
When I enter `ktsiaryna.test.90@bk.ru` in a field  by the xpath '//input[@id='user']'
When I click on an element by the xpath '//input[@id='login']'
When I enter '<pass>' in a field located '//input[@id='password']'
When I click on an element by the xpath '//button[@id='login-submit']'
Then the text 'Welcome, ' exists
