require 'pry'
class Song 
  
  attr_accessor :name, :artist 
  
  def initialize(name)
    @name = name 
  end 
  
  def self.new_by_filename(file_name)
      self.name = file_name.split(" - ")[0]
      self.artist.name = file_name.split(" - ")[1]
end
  
 def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end
  
  
end 