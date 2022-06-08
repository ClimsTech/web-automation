Feature: Performing a Google Search

    As a user on the Google search page
    I want to search for Selenium-Webdriver
    Because I want to learn more about it

    Background:
        Given I open the url "https://google.com"

    @OnlyFirefox
    @Verbose
    Scenario: Searching for unknown term
        When I set "climstech" to the inputfield "[name=q]"
        And  I press "Enter"
        Then I expect that element "#search" becomes not displayed

    @OnlyFirefox
    @Verbose
    Scenario Outline: Searching for term "climstech.com"
        When I set "climstech.com" to the inputfield "[name=q]"
        And  I press "Enter"
        Then I expect that element "#search" becomes displayed
