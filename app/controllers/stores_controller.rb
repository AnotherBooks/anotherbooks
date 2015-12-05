class StoresController < ApplicationController
  def show
  	@store = Store.find(params[:id])
  end

  def main
  	@stores = Store.order(id: :desc).limit(15).all
  end
end
