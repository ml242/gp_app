class WelcomeController < ApplicationController


  def index
    @disable_nav = true
  end

  def register
    @disable_nav = true
  end

end
