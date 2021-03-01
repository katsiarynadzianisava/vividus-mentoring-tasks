!-- GivenStories: story/trello/SignUpPreCondition.story

GivenStories: story/trello/SignInPreCondition.story
Scenario: Verify User Profile
When I wait until element located `By.xpath(//button[@aria-label='Open Member Menu'])` appears
When I click on an element by the xpath '//button[@aria-label='Open Member Menu']'
When I click on an element by the xpath '//span[text()='Profile and Visibility']'
Then an element by the xpath '//input[@name='username']' exists
Then a field with the name 'username' and text containing '${testUserName}' exists
Then a link with the URL '${URLcloudservice}' exists
Then a link with the URL '${URLpolicy}' exists
Then the page title is 'Profile | Trello'
Then the text 'Manage your personal information' exists
