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
    @link.update_attributes(params[:link])
    # I invented some stupid shit and spent a few hours wondering why it didn't work
    # if params["link"]["is_complete"] == 1
      # @link.is_complete = true
      # @link.update_attributes
    # end
    # binding.pry
    redirect_to("/itineraries/#{@link.itinerary_id}")
  end

#   def destroy
#   end

end