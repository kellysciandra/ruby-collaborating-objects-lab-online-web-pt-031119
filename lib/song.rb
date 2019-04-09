require 'pry'
class Song 
  
  attr_accessor :name, :artist 
  
  def initialize(name)
    @name = name 
  end 
  
 def self.new_by_filename(file)
    artist = file.split(" - ")[0]
    title = file.split(" - ")[1]
    song = self.new(title)
    binding.pry
    artist_name = artist
    song
  end
  
 def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end
  
  
end 