class LinksController < ApplicationController

#   def index
#   end

  def new
    @link = Link.new
  end

  def create
    @link = Link.create(params[:link])
    redirect_to("/itineraries/#{params[:link][:itinerary_id]}")
  end

#   def edit
#   end

  def show
    @links = Link.all
  end

  def update
    @link = Link.find(params[:id])
    if params["link"]["is_complete"] == 1
      @link.is_complete = true
      @link.update
    else
      @link.is_complete = false
      @link.update
    end
    redirect_back
  end

#   def destroy
#   end

end