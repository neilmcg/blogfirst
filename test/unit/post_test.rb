require File.join(File.dirname(__FILE__), '..', 'test_helper')

class PostTest < ActiveSupport::TestCase

  test "should create a post" do
    assert_difference 'Post.count' do
      create_post
    end
  end
  
  test "should require a title" do
    post = new_post :title => nil
    assert ! post.valid?
    assert post.errors.on(:title)
  end

end
