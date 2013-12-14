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

  def dashboard
    redirect_to :controller => :users, :action => :dashboard, :id => user.id, :anchor => "logged_in"
  end

end