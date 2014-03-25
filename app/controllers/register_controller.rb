class RegisterController < ApplicationController
  def index
  end
  def register
    user = User.new
    user.name = params[:register_form][:name]
    user.password = params[:register_form][:password]
    user.email = params[:register_form][:email]
    user.company = params[:register_form][:company]
    user.save
    session[:user_id] = user.id
    redirect_to home_index_path
  end
end
