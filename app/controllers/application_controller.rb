class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :check_user_logged_in!, :except => [:show, :index]

	private

	  def check_user_logged_in!
	    unless user_signed_in?
	      authenticate_user!
	    end
	  end
end
