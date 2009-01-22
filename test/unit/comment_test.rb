require File.join(File.dirname(__FILE__), '..', 'test_helper')

class CommentTest < ActiveSupport::TestCase
  
  test "should create a comment" do
    assert_difference 'Comment.count' do
      create_comment
    end
  end
  
  test "should require a email" do
    comment = new_comment :email => nil
    assert ! comment.valid?
    assert comment.errors.on(:email)
  end
  
  test "should require a body" do
    comment = new_comment :body => nil
    assert ! comment.valid?
    assert comment.errors.on(:body)
  end
  
end
