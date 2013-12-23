class LinksController < ApplicationController

#   def index
#   end

  def new
    @link = Link.new
  end

  def create
    @link = Link.create(params[:link])
      if @link.itinerary_id == nil
        i = Itinerary.create
        i.add_item(@link.item_id)
        i.user_id = current_user.id
        i.title = "New Itinerary"
        pic = Item.find(@link.item.id)
        i.img_url = pic.img_url
        i.save
        binding.pry
        @link.itinerary_id = i.id
      end
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