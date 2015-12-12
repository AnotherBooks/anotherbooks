class StoresController < ApplicationController
  def show
  	@store = Store.find(params[:id])
  end

  def main
  	@stores = Store.order(updated_at: :desc).limit(15).all
  end

  def local
  	@stores = Store.where(district_num: params[:district_num])
  end
end