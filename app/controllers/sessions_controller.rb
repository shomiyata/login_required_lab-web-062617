class SessionsController < ApplicationController

  def new
  end

  def index
  end

  def create
    session[:name] = params[:name]
    # byebug
    if current_user.present?
      redirect_to welcome_path
    else
      redirect_to login_path
    end
  end

  def destroy
    session.clear
    redirect_to login_path
  end

end
