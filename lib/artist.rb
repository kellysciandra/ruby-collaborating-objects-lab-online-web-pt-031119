
class Artist 
  
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs= []
  end 
  
  
  
  def add_song(song)
      @songs << song
    end 
 
   def self.all
     @@all << self
    end
  
    def save 
      @@all << self
    end 
  
    def print_songs 
       @songs.each do |song|
         puts song.name
        end 
    end 
  
    def self.find_by_name(name)
      @@all.find{|song| song.name == name}
    end
  
  def self.find_or_create_by_name(name)
    if self.find_by_name(name) 
      @@all.find do |song| 
        song.name == name 
          song 
          end 
      else 
        self.artist = Artist.new(name)
    end 
  end 
  
end 
