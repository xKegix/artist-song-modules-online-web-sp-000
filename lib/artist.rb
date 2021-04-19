require 'pry'

class Artist
  extend Memorable::ClassMethods, Findable
  include Paramable, Memorable::InstanceMethods

  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    super
    @songs = []
  end

  def self.all
    @@artists
  end

  def add_song(song)
    @song << song
    song.artist = self

    songs.each {|song| add_song(song)}
  end
end
