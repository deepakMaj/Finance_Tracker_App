class StocksController < ApplicationController

  def search
    if  params[:stock].blank?
      flash.now[:danger] = "You have entered invalid stock ticker "
    else
      @stock = Stock.new_form_lookup(params[:stock])
      flash.now[:danger] = "Please enter valid stock ticker " unless @stock
    end
    respond_to do |format|
      format.js {  render partial: 'users/result' }
    end
  end
end
