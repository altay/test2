class MainController < ApplicationController

  before_filter :check_pw, :except=>[:index]

  def check_pw
    logger.info(session.inspect)
    if (session.nil? || session[:pw_ok].nil?)
      redirect_to(:controller=>'main', :action=>'index')
    end
  end

  def index
    session[:pw_ok]=nil
    return unless request.post?
    if (params[:pw] && ['monkeypoop', 'monkey poop'].member?(params[:pw]))
      session[:pw_ok] = true
      redirect_to(:controller=>"main", :action=>"from") and return
    end
  end

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
