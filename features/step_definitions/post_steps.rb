Given /^I have valid posts titled (.+)$/ do |titles|
  titles.split(', ').each do |title|
    Post.create!(:title => title, :body => "body")
  end
end

Given /^I have no posts$/ do
  Post.delete_all
end

Given /^I have one post titled post$/ do
  Post.delete_all
  Post.create!(:title => "post", :body => "body")
end

Then /^I should have ([0-9]+) post$/ do |count|
  Post.count.should == count.to_i
end