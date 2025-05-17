class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  def admin_mode?
    params[:key] == ENV["ADMIN_KEY"]
  end 
  helper_method :admin_mode?

end
