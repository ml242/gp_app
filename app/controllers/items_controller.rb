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

  end

  def show
    @item = Item.find(params[:id])
  end

  def update

  end

  def destroy

  end

end
