class ItemsController < ApplicationController

  def index
    @items = Item.all
    @rand_items = @items.shuffle
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(params[:item])
    if params["itinerary_id"]
      @item.itineraries << Itinerary.find(params["itinerary_id"])
      @item.save
      redirect_to "/itineraries/#{params[:itinerary_id]}"
    elsif
      @item.save
      redirect_to items_path
    else
      render :new
    end
  end


  def edit
    @item = Item.find(params[:id])

  end

  def show

    @item = Item.find(params[:id])
    @itineraries = Itinerary.all
    @link = Link.create
    @user = current_user
  end

  def update
    @item = Item.find(params[:id])
    if @item.update_attributes(params[:item])
      redirect_to @item
    else
      render :edit
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path
  end

end
