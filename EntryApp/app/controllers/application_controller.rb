class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper


def limited_access

	redirect_to root_path, :flash => { :error => "Insufficient rights!" } if !signed_in? || !current_user.admin?
end

end