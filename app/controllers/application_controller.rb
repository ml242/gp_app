class ApplicationController < ActionController::Base
  protect_from_forgery
  # before_filter :authenticate_user!

  def after_sign_in_path_for(resource)
    itineraries_path
  end

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def after_sign_in_path_for(resource_or_scope)
    if request.env['omniauth.origin']
      request.env['omniauth.origin']
    end
  end

end
