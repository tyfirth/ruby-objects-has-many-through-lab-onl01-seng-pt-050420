class Artist 
  
  attr_accessor :name, :genre, :title, :song, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def self.all
    @@all
  end
  
  def new_song(title, genre)
    Song.new(title, self, genre)
  end
  
  def songs 
    Song.all.select {|song| song.artist == self}
  end
  
  def genres 
    genre.map {|song| song.genre}
  end
  
end