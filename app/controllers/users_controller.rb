class UsersController < ApplicationController

  def sign_in

  end

  def index
    # @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
  end

  def show
  end

  def edit
  end

  def update
    @user = User.new
  end

  def destroy
  end

end