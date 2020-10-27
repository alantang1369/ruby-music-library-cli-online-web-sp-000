<<<<<<< HEAD
class Genre 
  extend Concerns::Findable
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name 
    
    @songs = []
  end
  
  def save 
    @@all << self 
  end
  
  def self.all 
    @@all
  end
  
  def self.destroy_all 
    @@all.clear 
  end
  
  def self.create(name)
    genre = Genre.new(name)
    genre.save 
    genre
  end
  
  def songs 
    @songs
  end
  
  def artists
    songs.collect{|s| s.artist}.uniq 
  end
    
=======
class Genre 
  extend Concerns::Findable
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name 
    save 
    @songs = []
  end
  
  def save 
    @@all << self 
  end
  
  def self.all 
    @@all
  end
  
  def self.destroy_all 
    @@all.clear 
  end
  
  def self.create(name)
    genre = Genre.new(name)
    genre.save 
    genre
  end
  
  def songs 
    @songs
  end
  
  def artists
    songs.collect{|s| s.artist}.uniq 
  end
    
>>>>>>> ad6cdb0d761b150142c25c366551a6bee858a135
end