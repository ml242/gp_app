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
    if @item.save
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

  end

end
