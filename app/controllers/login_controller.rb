class LoginController < ApplicationController
  def index
  	  puts User.find(:all).size
  end
end
