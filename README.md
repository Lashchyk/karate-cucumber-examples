# Basic API Test Examples using Karate and Cucumber
Example is based on free fake API https://jsonplaceholder.typicode.com/ and covers the simple test scenario to test an GET api request

```
Scenario: Comments retrieval
    Given url 'https://jsonplaceholder.typicode.com/comments'
    When method get
    Then status 200
    And match response contains { postId: 1, id: 1, name: '#notnull', email: '#notnull', body: '#notnull'}
```

## How to run tests
run all tests by `gradle test`
