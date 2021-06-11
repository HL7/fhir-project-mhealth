@App-Should @Device-Should
Feature: The range of numeric values is documented and appropriate for each measure


@App-Shall @Device-Shall
Scenario: Range of values is documented

Given a <Numeric Value> reported by a Device or App
 And <Documentation> for it
 When the <Documentation> is examined
 Then the range values for the <Numeric Value> is documented
  And the <Numeric Value> falls within the documented range.
