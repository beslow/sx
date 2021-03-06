class RegisterController < ApplicationController
  layout "loginregister"
  include RegisterHelper
  def index
  end
  def register
    user = User.new
    user.name = params[:register_form][:name]
    user.password = params[:register_form][:password]
    user.email = params[:register_form][:email]
    user.company = params[:register_form][:company]
    #binding.pry
    valid_flag,error_msg = validate_user_data user
    unless valid_flag
      flash[:notice] = error_msg
      render register_index_path
      return
    end
    if user.save
      session[:user_id] = user.id
      flash[:notice] = 'register success!'
      redirect_to home_index_path
    else
      flash[:notice] = 'register failure!'
      render register_index_path
    end
  end
  def validate_name_unique
      project_templatemy = ProjectTemplate.find_by_id(params[:templatemy_id])
      user = User.find_by(name: params[:name])
      if user.blank?
        render :inline => "<img src='/assert/true.png' />"
      else
        render :inline => "<img src='/assert/false.png' />"
      end
  end
end







