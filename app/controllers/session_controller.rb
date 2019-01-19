class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by :email => params[:email]
    if user.present? && user.authenticate(params[:password])
      # This hash below ensures that you are remembered as you surf the site. Every user gets its own has
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash[:error_message] = "Invalid email or password"
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end
