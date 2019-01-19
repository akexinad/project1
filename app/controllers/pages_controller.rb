class PagesController < ApplicationController
  def home
    @current_user = User.find(session[:user_id]) if session[:user_id].present?
  end
end
