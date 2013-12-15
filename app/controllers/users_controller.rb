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