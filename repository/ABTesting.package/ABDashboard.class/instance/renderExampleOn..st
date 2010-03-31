accessing
renderExampleOn: html
testTable rows: (self exampleABTests  values asOrderedCollection).
  html render: testTable.