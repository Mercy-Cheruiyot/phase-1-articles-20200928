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
  def Articles
    Article.all.select{|article|article.author==self}

  end
  def Magazines
    Article.map{|article|article.magazine.name}.uniq
  end
end
