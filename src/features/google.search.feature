Feature: Performing a Google Search

    ...

    Background:
        Given I open the url "https://google.com"

    @OnlyChrome
    @Verbose
    Scenario Outline: Searching for term "<search>"
        When I set "<search>" to the inputfield "[name=q]"
        And  I press "Enter"
        Then I expect that element "#search" becomes displayed
        When I click on the element `a[href="<url>"]`
        Then I expect that the title contains "<title>"

        Examples:
        |search|url|title|
        |climstech.com|https://climstech.com/|climstech|
