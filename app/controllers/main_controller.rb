class MainController < ApplicationController

  def index
  end

=begin
  def add_song
    return unless request.post?
    @song = 
  end
=end

  def booyah
    @songs = Song.all
  end

  def from
  end

  def to
  end

  def with
  end

end
