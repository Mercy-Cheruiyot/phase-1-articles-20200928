require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
article1=Article.new('Times',"Fred",'Cooking Book')
times=Article.new('Times News','Jane','How to Diet')

fred=Author.new("Fred T")
jane=Author.new('jane')

cook=Magazine.new('Cooking Book')
diet=Magazine.new("How to Diet")








### DO NOT REMOVE THIS
binding.pry

0
