class Magazine
  attr_accessor :name, :category
  @@all=[]


  def initialize(name, category)
    @name = name
    @category = category

  end
  def self.all
    @@all
  end
  def Articles
    Article.all.select{|article|article.magazine=self}

  end
  def article_titles

  end

  end
  def Contributors
    Articles.map{|article|article.author}
  end
  def find_by_name

  end
  def contributing_authors
    @@all.select{|article|article.contributors>2}
  end



end
