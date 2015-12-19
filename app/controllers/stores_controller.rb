class StoresController < ApplicationController
  def show
  	@store = Store.find(params[:id])
  end

  def main
  	@stores = Store.order(id: :desc).all
  end

  def local
  	@stores = Store.where(district_num: params[:district_num])
  end
end