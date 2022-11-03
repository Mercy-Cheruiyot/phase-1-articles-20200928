class Article
    attr_reader :title, :author, :magazine
    @@all=[]
  
    def initialize(title,author,magazine)
      if( title.is_a?(String))
        @author = author
        @magazine = magazine
        @title = title

        @@all << self
    else
        raise InitializationError 
      end
    
    end
    def author
      @author
    end
    def magazine
      @magazine
    end
    def title 
      @title
    end
    def self.all
      @all
    end
    class InitializationError < ArgumentError
      def message
          "Title should be a string"
      end
  end
  
    
      

end
