Description: Story for SignUp functionality verification;


Scenario: Sign Up(expressions)
Given I am on the main application page
When I click on a link with the CSS selector 'a[data-analytics-event='clickedSignupHeaderButton']'
When I initialize the STORY variable 'testUserEmail' with value "#{generate(regexify `\b[a-z0-9]+@[a-z0-9]+\.[a-z]{2,}\b`)}"
When I enter '${testUserEmail}' in a field by the xpath '//*[@id="email"]'
When I initialize the STORY variable 'testUserFullName' with value "#{generate(regexify `[a-z]{5}`)}"
When I enter '${testUserFullName}' in a field by the xpath '//*[@id="name"]'
When I enter '12345678' in a field by the xpath '//*[@id="password"]'
When I click on an element by the xpath '//*[@id="signup"]'
Then the text 'Welcome to Trello!' exists 




Scenario: Sign Up2(Example tables)
Given I am on the main application page
When I click on a link with the CSS selector 'a[data-analytics-event='clickedSignupHeaderButton']'
When I enter '<email>' in a field by the xpath '//*[@id="email"]'
When I click on an element by the xpath '//*[@id="signup"]'
When I enter '<fullName>' in a field by the xpath '//*[@id="name"]'
When I enter '<password>' in a field by the xpath '//*[@id="password"]'
When I click on an element by the xpath '//*[@id="signup"]'
Then the text 'Welcome to Trello!' exists
Examples:
|email |fullName |password |
|#{generate(regexify `\b[a-z0-9]+@[a-z0-9]+\.[a-z]{2,}\b`)}|#{generate(regexify `[a-z]{5}`)}|12345678 |
