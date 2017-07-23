# The Artist class will be responsible for either creating the artist (if the artist doesn't exist in our program yet) or finding the instance of that artist (if the artist does exist).
require "pry"

class Artist
  attr_accessor :name, :song, :songs, :artist

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  @@all = []

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def add_song(song)
    # artist.song = self
    @songs << song
  end

  def songs
    @songs
  end

  def print_songs
    self.songs.each {|s| puts s.name}
  end


  def self.find_or_create_by_name(artist_name)
    if self.all.any?{|a| a.name == artist_name}
      self.all.select { |a| a.name == artist_name}
    else
      self.new(artist_name)
    end
  end
# binding.pry
end


# mj = Artist.new("Michael Jackson")
# ag = Artist.new("Arianna Grande")
# lg = Artist.new("Lady Gaga")
# mj.add_song("PYT")
# mj.add_song("Thriller")
# ag.add_song("All Night")
# ag.add_song("Everyday")
# lg.add_song("Marry the Night")
# lg.add_song("Poker Face")

