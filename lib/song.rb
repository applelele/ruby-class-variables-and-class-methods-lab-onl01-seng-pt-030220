# require "pry"

class Song
  ## class variables
  @@count = 0
  @@genres = []
  @@artists = []
  
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << @genre
    @@artists << @artist
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    @@genre_count = {}

    @@genres.collect do |v|
      if @@genre_count.keys.include?(v)
        @@genre_count[v] += 1
      else
        @@genre_count[v] = 1
      end
    end
    @@genre_count
  end
  
def self.artist_count
    @@artist_count = {}

    @@artists.collect do |v|
      if @@artist_count.keys.include?(v)
     
        @@artist_count[v] += 1
      else
        @@artist_count[v] = 1
      end
    end
    @@artist_count
  end

  
  Song.count
  Song.artists
  Song.genres
  Song.genre_count
  Song.artist_count
end