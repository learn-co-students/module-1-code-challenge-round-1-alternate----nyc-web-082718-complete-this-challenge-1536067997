require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

require_relative '../app/models/article'
require_relative '../app/models/author'
require_relative '../app/models/magazine'


a1 = Author.new('Johnny')
a2 = Author.new('David')
a3 = Author.new('Lisa')

m1 = Magazine.new('Sports Illustrated', 'Sport')
m2 = Magazine.new('Elle', 'Fashion')
m3 = Magazine.new('Reader Digested', 'General')
m4 = Magazine.new('Men Health', 'Sport')

ar1 = Article.new(a1, 'How to run', m1)
ar5 = Article.new(a1, 'How to swim', m1)
ar2 = Article.new(a2, 'How to dress', m2)
ar3 = Article.new(a3, 'How to read', m3)
ar4 = Article.new(a1, 'How to fit', m4)
ar4 = Article.new(a1, 'How to dress', m2)


###  WRITE YOUR TEST CODE HERE ###


binding.pry

0
