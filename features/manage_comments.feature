Feature: Manage Comments
	In order to comment on posts
	As a user
	I want to create and manage comments

	Scenario: Create a comment
		Given I have valid posts titled Rails
		And I am on the list of posts
		When I follow "Rails"
		And I follow "Add Comment"
		And I fill in "Email" with "neilmcgeehan@gmail.com"
		And I fill in "Body" with "Awesome post!"
		And I press "Submit"
		Then I should see "Comment added!"
		And I should see "Rails"
		And I should see "neilmcgeehan@gmail.com"
		And I should see "Awesome post!"