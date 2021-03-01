GivenStories: story/trello/SignInPreCondition.story

Scenario: check presence of some elements  
When I wait until an element with the text 'Most popular templates' appears
When I find > `0` elements by `By.xpath(//div/a[@class='_1MjVHpnUnwLGMg'])` and for each element do
|step|
|Then an element by the xpath '//h1[text()='Project Management']' exists|
|Then an element by the xpath '//h1[text()='Kanban Template']' exists |

Scenario: some verifications for these elements if they exist on the page  
When the condition '#{eval("<class>"=="_3yHVIjzlk2QRCV")}' is true I do
|step|
|When I click on an element by the xpath '//h1[text()='Project Management']'|
|Then the page title is 'Project Management | Trello'|