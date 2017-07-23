# The Song class will be responsible for creating songs given each filename and sending the artist's name (a string) to the Artist class

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song_name = filename.split(" - ")[1]
    song = self.new(song_name)
    artist_name = filename.split(" - ")[0]
    artist = Artist.new(artist_name)
    song.artist = artist
    song
  end

  def artist_name(artist_name)
    @artist = artist_name
  end

end