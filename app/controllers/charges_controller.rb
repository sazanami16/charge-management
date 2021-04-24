class ChargesController < ApplicationController
  def index
  end

  def new
    @charge = Charge.new
  end

  def create
    @charge = Charge.new(charge_params)
  end


  private
  def charge_params
    params.require(:charge).permit(:tax_name, :money, :deadline, :place, :address, :number, :payment)
  end
  
end
