require 'Pry'
class Song

attr_accessor :name, :artist, :genre

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1

  if @@genres.include?(@genre)
    @@genre_count[@genre] += 1
  else 
    @@genre_count[@genre] = 1
  end 
  @@genres << @genre


    # @@genres.each do |genre|
    #   @@genre_count[genre] 
    # end 

  if @@artists.include?(@artist)
    @@artist_count[@artist] += 1
  else 
    @@artist_count[@artist] = 1
  end 
  @@artists << @artist



end 
  @@value_artist = 0
  @@value_genre = 0

@@count = 0

def self.count  
  @@count
end 

@@genres = []

def self.genres
  @@genres.uniq
end 


@@artists = []

def self.artists
  @@artists.uniq
end 

@@genre_count = {}

def self.genre_count
  @@genre_count
end 

@@artist_count = {}

def self.artist_count
  @@artist_count
end 
end 
# Pry.start 
