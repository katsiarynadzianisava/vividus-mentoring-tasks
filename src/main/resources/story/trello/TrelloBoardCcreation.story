Scenario: Trello Board creation using API  
Given I am on the main application page
When I log in as user '${user}' with password '${password}'
When I wait until element located `By.xpath(//span[text()='Create new board'])` appears

Scenario: Create Trello Board
When I issue a HTTP POST request for a resource with the URL 'https://api.trello.com/1/boards/?key=${key}&token=${token}&name=board2'
Then the response code is equal to '200'
