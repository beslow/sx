
class ProductionsController < ApplicationController

  def index
  
    unless params[:protype].blank?
      @products=Production.where(pro_type: params[:protype])
    else
      @products = Production.where(pro_type: 'T')
    end
    params[:way_display] = 'pic' if params[:way_display].blank?
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
    render :controller => 'Productions',:action => 'index'
  end
end
