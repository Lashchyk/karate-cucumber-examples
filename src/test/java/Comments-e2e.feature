Feature: Testing Comments endpoint

  Scenario: Comments retrieval
    Given url 'https://jsonplaceholder.typicode.com/comments'
    When method get
    Then status 200
    And match response contains { postId: 1, id: 1, name: '#notnull', email: '#notnull', body: '#notnull'}
