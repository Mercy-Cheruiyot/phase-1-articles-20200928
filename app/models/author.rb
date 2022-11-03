
class Author
  attr_reader :name
  @@all=[]


  def initialize(name)
    if name.is_a?(String)
      @name = name
    else
      raise InitializationError
    end
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
  class InitializationError < ArgumentError
    def message
      " Name should be a string"
    end

end
