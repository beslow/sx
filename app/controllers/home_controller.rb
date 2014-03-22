class HomeController < ApplicationController
  def index
    u = User.new
	u.name = 'cxp'
	u.password = '123456'
	u.save
  end
end
