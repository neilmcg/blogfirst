Feature: Manage Posts
	In order to make a blog
	As an author
	I want to create and manage articles

	Scenario: Posts list
		Given I have valid posts titled Rails, Ruby
		When I go to the list of posts
		Then I should see "Rails"
		And I should see "Ruby"

	Scenario: Edit a post
		Given I have valid posts titled Rails
		And I am on the list of posts
		When I follow "Edit"
		And I fill in "Title" with "Edited title!"
		And I fill in "Body" with "Edited body!"
		And I press "Save"
		Then I should see "Post saved."
		And I should see "Edited title!"
		And I should see "Edited body!"
		
	Scenario: Show a post
		Given I have valid posts titled Rails
		And I am on the list of posts
		When I follow "Rails"
		Then I should see "Rails"
		And I should see "body"
		
	Scenario: Create a post
		Given I have no posts
		And I am on the list of posts
		When I follow "Create Post"
		And I fill in "Title" with "Title"
		And I fill in "Body" with "Body"
		And I press "Create"
		Then I should see "Post created."
		And I should see "Title"
		And I should see "Body"
		And I should have 1 post
	
	Scenario: Delete a post
		Given I have one post titled post
		And I am on the list of posts
		When I follow "post"
		And I follow "Delete"
		Then I should see "Post Destroyed."
		And I should have 0 post