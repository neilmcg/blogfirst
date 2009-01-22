require 'fixjour'
require 'faker'

Fixjour do
  define_builder(Post) do |klass, overrides|
    klass.new(:title => "My Post", :body => "My post's body.")
  end
  
  define_builder(Comment) do |klass, overrides|
    klass.new(:email => "neilmcgeehan@gmail.com", :body => "a comments body")
  end
end