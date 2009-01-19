require 'fixjour'
require 'faker'

Fixjour do
  define_builder(Post) do |klass, overrides|
    klass.new(:title => "My Post", :body => "My post's body.")
  end
end