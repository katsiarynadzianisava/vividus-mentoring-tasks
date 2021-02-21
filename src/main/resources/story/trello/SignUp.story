Scenario: Creating several users using ‘Examples tables’ 
Given I am on the main application page
When I click on an element by the xpath '//a[text()='Sign up']'
When I enter '<email>' in a field by the xpath '//input[@id='email']'
When I click on an element by the xpath '//input[@id='signup-submit']'
Then the text 'Sign up for your account' exists
Examples:
|email|
|testetdsc@treszxd.com|
|testetsc@treszxd.com|


Scenario:Set up some sign up values using expressions 
Given I am on the main application page
When I click on an element by the xpath '//a[text()='Sign up']'
When I enter '#{generate(Internet.emailAddress)}' in a field by the xpath '//input[@id='email']'
When I click on an element by the xpath '//input[@id='signup-submit']'
When I wait until element located `By.xpath(//input[@id='displayName'])` appears
When I enter '#{generate(regexify '[a-z]{5}[A-Z]{5}')}' in a field by the xpath '//input[@id='displayName']'
When I enter '#{generate(regexify '[a-z]{5}[A-Z]{5}')}' in a field by the xpath '//input[@id='password']'
When I click on an element by the xpath '//button[@id='signup-submit']'
Then the text 'Welcome, ' exists


