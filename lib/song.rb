equire 'pry'
require_relative '../config/environment'

class Song
  extend Findable
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def self.all
    @@songs
  end


  def artist=(artist)
    @artist = artist
