class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = params[:id]
    @item.save
    redirect_to itinerary_show_path
  end

  def edit
    @item = params[:id]
  end

  def show
    @item = params[:id]
  end

  def update
    @item = params[:id]
  end

  def destroy
    @item = nil
  end

end
