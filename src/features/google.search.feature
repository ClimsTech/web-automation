Feature: Performing a Google Search

    ...

    Background:
        Given I open the url "https://google.com"

    @Verbose
    Scenario Outline: Searching for term "<searchItem>"
        When I set "<searchItem>" to the inputfield "[name=q]"
        And  I press "Enter"
        Then I expect that element "#search" becomes displayed

        Examples:
        |searchItem|
        |climstech|
        |climstech.com|
