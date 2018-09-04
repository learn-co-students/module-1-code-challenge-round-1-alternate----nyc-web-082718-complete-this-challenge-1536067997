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
