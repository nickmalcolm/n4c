class Admin::BaseController < ActionController::Base
  
  layout "admin"

  before_filter :login_required

  def destroy
    head :not_found
  end

  private
  
  def login_required
    authenticate_or_request_with_http_basic do |username, password|
      username == "todd" && password == "poopbutt"
    end
  end

end