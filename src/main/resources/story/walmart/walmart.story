Scenario: Create account in Walmart.com site
Given I am on a page with the URL 'https://www.walmart.com/'
When I click on an element by the xpath ‘//button[@id='hf-account-flyout']’
When I click on a link with the CSS selector '//a//*[text()='Account']'
When I click on an element by the xpath ‘//*[@id="main-content"]//a[text()='create an account']’
Then the text '$Create your Walmart account' exists