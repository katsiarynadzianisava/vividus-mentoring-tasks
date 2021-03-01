GivenStories: story/trello/SignInPreCondition.story

Scenario: Navigate to 5 pages 
!-- Page#1/element/button/xpath
When I wait until an element with the xpath '//span[text()='Templates']' appears
When I click on an element by the xpath '//span[text()='Templates']'
When I wait until an element with the xpath '//button[text()='Get started']' appears
When I establish baseline with `templates`
When I ${visual-action} baseline with `templates`

!-- Page#2/image
When I check second page

!-- Page#3/text
When I click on an element with the text 'Education'
When I establish baseline with `EducationIgnoring` ignoring:
|ELEMENT            |
|By.xpath(//div[@class='ABJoLPE63QtUOR'])| 
When I ${visual-action} baseline with `EducationIgnoring` ignoring:
|ELEMENT            |
|By.xpath(//div[@class='ABJoLPE63QtUOR'])| 

!-- Page#4/search box
When I open Team board 'Tobako' 
When I ${visual-action} baseline with `Tobako`

!-- Page#5/refresh
When I refresh the page
When I establish baseline with `TobakoIgnor` ignoring:
|ELEMENT            |
|By.xpath(//input[@class='header-search-input js-search-input js-disable-on-dialog header-search-input-wide focus'])| 
When I ${visual-action} baseline with `TobakoIgnor` ignoring:
|ELEMENT            |
|By.xpath(//input[@class='header-search-input js-search-input js-disable-on-dialog header-search-input-wide focus'])| 
