Feature: Create and Edit categories
    As a blog administrator
    I want to be able to create new categories and assign articles to them

    Background:
	Given the blog is set up
	And I am logged into the admin panel
	When I follow "Categories"

    Scenario: Link should not be broken
	Then I should see "Categories"

    Scenario: It should be possible to create new categories
	When I fill in "Name" with "a category"
	And I press "Save"
	Then I should see "a category"

    Scenario: It should be possible to edit existing categories
	When I follow "General"
	Then I fill in "Description" with "a, b, c"
	And I press "Save"
	Then I should see "a"