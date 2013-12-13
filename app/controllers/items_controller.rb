class ItemsController < ApplicationController

  def index
    @items = Items.all
  end

  def new
    @item.create[params]
  end

  def create
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

end
