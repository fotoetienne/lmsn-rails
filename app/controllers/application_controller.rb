class ApplicationController < ActionController::Base
  protect_from_forgery
  RailsAdmin.authorize_with do
    redirect_to root_path unless warden.user.role = :admin
  end
end
