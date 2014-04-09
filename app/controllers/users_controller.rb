class UsersController < ApplicationController
  def checkname
    if User.where(name: params[:name]).count == 0
      render :nothing => true,:status => 200
    else
      render :nothing => true,:status => 409
    end
    return
  end
end
