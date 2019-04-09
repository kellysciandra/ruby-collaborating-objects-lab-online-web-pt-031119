require 'pry'
class MP3Importer 
  
  attr_accessor :path, :artist, :song 
  
  
  def initialize(path)
    @path = path 
  end 
  
  
 def files
    Dir.chdir(@path) do | path |
        Dir.glob("*.mp3")
    end
end
  
  def import(list_of_filenames)
    list_of_filenames.each{ |filename| Song.new_by_filename(filename) }
  end
  
end 
