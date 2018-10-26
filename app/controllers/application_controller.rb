class ApplicationController < ActionController::Base

  skip_before_action :verify_authenticity_token  
  before_action :verify_user

  def verify_user
    user_session = cookies[:user_session]
    unless user_session.nil?
      @current_user = User.find_user_by_session user_session
      return @current_user unless @current_user.nil? 
    end    

    @current_user = User.create_new_user_session
    cookies[:user_session] = @current_user.session_id
  end


  def current_user
    return @current_user
  end

end
