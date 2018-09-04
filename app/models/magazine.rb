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
