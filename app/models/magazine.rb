require_relative "article"

class Magazine
  attr_accessor :name, :category
  @@all=[]


  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end
  def self.all
    @@all
  end
  def articles
    Article.all.select{|article|article.magazine=self}

  end
  def article_titles
    articles.map{|aricle| article.Articles.title}
  end

  end
  def contributors
    articles.map{|article|article.author}
  end
  def find_by_name

  end
  def contributing_authors
    @@all.select{|article|article.contributors>2}
  end



end
