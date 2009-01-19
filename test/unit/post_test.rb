require File.join(File.dirname(__FILE__), '..', 'test_helper')

class PostTest < ActiveSupport::TestCase

  test "should create a post" do
    assert_difference 'Post.count' do
      create_post
    end
  end
  
  test "should require a title" do
    assert_no_difference 'Post.count' do
      create_post :title => nil
    end
  end

end
