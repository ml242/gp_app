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
  end

  def update
    @link = Link.find(params[:id])
    if @link.is_complete == false
      @link.is_complete = true
      # @link.update_attributes(params[:link])
      @link.save
    else
      @link.is_complete = false
      # @link.update_attributes(params[:link])
      @link.save
    end
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