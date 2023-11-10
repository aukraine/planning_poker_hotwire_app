class ApplicationController < ActionController::Base
  helper_method :current_member

  def current_member
    return if session[:member_id].blank?

    @current_member ||= Member.find(session[:member_id])
  end
end
