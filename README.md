# Basic API Test Examples using Karate and Cucumber
-----------------
## Introduction
[Karate](https://github.com/karatelabs/karate) is an open-source framework for API Test automation that uses BDD style syntax, has a rich assertion library and built-in HTML reports.

## Tests
Example is based on free fake API https://jsonplaceholder.typicode.com/ and covers the simple test scenario to test an GET api request

```
Scenario: Comments retrieval
    Given url 'https://jsonplaceholder.typicode.com/comments'
    When method get
    Then status 200
    And match response contains 
        { postId: 1, id: 1, name: '#notnull', email: '#notnull', body: '#notnull'}
```

## How to run tests
run all tests by `gradle test`
