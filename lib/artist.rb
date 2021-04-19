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
