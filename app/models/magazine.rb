require_relative "article"

class Magazine
  attr_accessor :name, :category
  @@all=[]


  def initialize(name, category)
    if (name.is_a?(String) && category.is_a?(String))
      @name = name
      @category = category
      @@all << self
    else
      raise InitializationError
    end
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
  class InitializationError < ArgumentError
    def message
      "Category and name should be a string"
    end



end
