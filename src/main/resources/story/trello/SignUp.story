Scenario: Create several users using ‘Examples tables’ 
Given I am on the main application page
When I click on an element by the xpath '//a[@class='btn btn-sm btn-link text-primary']'
When I log in as a user with <email> and <password>

Examples:
|email						  |password|
|qysemekinna-8514@yopmail.com |123456AB|
|happazollamm-7732@yopmail.com|123456AB|

