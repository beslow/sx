class LoginController < ApplicationController
  def index
    @user = User.find_by(id: '1')
  end
  def login
    if request.get?
      session[:user_id] = nil
      @user = User.new
    else
      logged_in_user = User.find_by(name: params[:login_form][:name],password: params[:login_form][:password])
      #logged_in_user = @user.try_to_login
      puts 1
      if logged_in_user
        puts 1
        session[:user_id] = logged_in_user.id
        redirect_to home_index_path
      else
        render login_index_path
        flash[:notice] = 'Invalid user/password combination'
      end
    end
  end
  def logout
    session[:user_id] = nil
    render home_index_path
  end
end
