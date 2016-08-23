class StoresController < ApplicationController
  def index
    @stores = Store.where("name like ? or address like ?", "%#{params[:query]}%", "%#{params[:query]}%")
    @query = params[:query]
  end

  def show
  	@store = Store.find(params[:id])
  	require 'nokogiri'
  	require 'open-uri'

		url = URI.encode("https://apis.daum.net/search/image?apikey=c981ec9d04d0139cbb3fd3f9da722a8f&q=#{@store.name}&result=8&output=xml")
		xml = Nokogiri::XML(open(url))
			@item = xml.xpath('//item').map do |i| {
				:thumbnail => i.xpath('thumbnail').inner_text
			}
			end
	@near_store = Store.where(district_num: (Store.find(params[:id]).district_num)).order("RANDOM()").limit(2)
  end

  def main
  	@stores = Store.order(id: :desc).limit(15)
  end

  def local
  	@stores = Store.where(district_num: params[:district_num])
  end
end
