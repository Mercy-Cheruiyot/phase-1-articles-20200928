require_relative "article"

class Author
  attr_reader :name
  @@all=[]


  def initialize(name)
    @name = name
    @@all << self
  
  end
  def name
    @name
  end
  def self.all
    @all
  end
  def articles
    Article.all.select{|article|article.author==self}

  end
  def magazines
    articles.map{|article|article.magazine.name}.uniq
  end
  def topic_areas

  end
  def add_article(magazine, title)

end
