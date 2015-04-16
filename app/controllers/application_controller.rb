class ApplicationController < ActionController::Base
  protect_from_forgery


  layout :get_layout

  before_filter :authenticate_user!

  def get_layout
  	return current_user ? "application" : "login"
  end

  def some
  	adga
  end


end
