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
    
    artist_name = artist
    song
    
  end
  

  
  
end 