# The MP3 Importer will parse all the filenames in the db/mp3s folder and send the filenames to the Song class -- Dir["../db/mp3s/*.mp3"]


class MP3Importer

  attr_accessor :path

  @@all = []

  def initialize(path)
    @path = path
  end

  def files
    files_arr = Dir[@path + "/*.mp3"] # creates array of paths
    files_arr.map do |file| # iterates through each path
      file.split("/").last # splits path at / and picks the last item, which would be JUST the .mp3 (Beyonce - Countdown - pop.mp3)
    end
  end

  # def import
  #    files.each do |file|
  #      Song.new_by_filename(file)
  #    end

end

