
class ProductionsController < ApplicationController

  def index
    unless params[:protype].blank?
      @products=Production.where(pro_type: params[:protype])
    else
      @products = Production.where(pro_type: 'T')

    end
    binding.pry
  end

  def show
  end

  def edit
  end

  def new
  end

  def change_type
    puts  'it is coming back!'
    type = params[:protype]
    @products = Production.where(pro_type: type)
    #binding.pry
    #redirect_to :action=>'index',:protype =>  params[:protype]
    render :action => 'index'
  end
end
