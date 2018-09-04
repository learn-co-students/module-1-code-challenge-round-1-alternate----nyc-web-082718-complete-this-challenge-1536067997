# Please copy/paste all three classes into this file to submit your solution!
class Author
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def articles
    Article.all.select do |article|
      article.author == self
    end
  end

  def magazines
    articles.map do |article|
    article.magazine
  end
end

def add_article(title, magazine)
  Article.new(self, title, magazine)
end

def find_specialties
  magazines.map do |magazine|
    magazine.category
  end.uniq
end


end

class Magazine
  attr_accessor :name, :category
  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

 def self.all
   @@all
 end

 def self.find_by_name(name)
   all.find do |magazine|
     magazine.name = name
   end
 end

 def my_articles
   Article.all.select do |article|
     article.magazine == Magazine.find_by_name(self)
   end
 end

 def article_titles
  my_articles.map do |article|
    article.title
  end
 end

end

class Article
  attr_reader :author, :title, :magazine

  @@all = []

  def initialize(author, title, magazine)
    @author = author
    @title = title
    @magazine = magazine
    @@all << self
  end

    def self.all
      @@all
    end

end
