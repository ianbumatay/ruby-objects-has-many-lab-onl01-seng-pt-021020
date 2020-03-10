require "pry"
class Artist


  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def songs
    Song.all.select{|song| song.artist == self}
  end

  def add_song(song)       #connected to Song class
    song.artist = self     #  def self.all
  end                      #     @@all
                           #   end

  def add_song_by_name(song_name)
    #binding.pry
    singer = Song.new(song_name)
    add_song(singer)
  end

  def self.song_count
    #binding.pry
    Song.all.count
  end
end
