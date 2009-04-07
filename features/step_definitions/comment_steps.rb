Given /^I have a valid post with one comment titled (.+)$/ do |titles|
  titles.split(', ').each do |title|
    Post.create!(:title => title, :body => "body")
    ...needs more code
  end
end