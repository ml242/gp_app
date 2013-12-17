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
    @link.update_attributes!
  end

#   def destroy
#   end

end