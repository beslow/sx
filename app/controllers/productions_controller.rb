class ProductionsController < ApplicationController
  def index
    @products = Production.all
  end

  def show
  end

  def edit
  end

  def new
  end
end
