class UsersController < ApplicationController
# class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def facebook
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    @user = User.find_for_facebook_oauth(request.env["omniauth.auth"], current_user)

    if @user.persisted?
      sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end

  def sign_in

  end

  def register

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
    @user = User.find(params[:id])
    @itineraries = Itinerary.where( :user_id => current_user ) || [Itinerary.new]
    @items = Item.where( :user_id => current_user ) || [Item.new]
  end

  def edit
    binding.pry
  end

  def update
    @user = User.new
  end

  def destroy
    binding.pry
    @itinerary = Itinerary.find(params[:id])
    @itinerary.delete
    redirect_to users_show_path
  end

  def dashboard
    redirect_to :controller => :users, :action => :dashboard, :id => user.id, :anchor => "logged_in"
  end

end