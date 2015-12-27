class StoresController < ApplicationController
  def show
  	@store = Store.find(params[:id])
  	require 'nokogiri'
  	require 'open-uri'

		url = URI.encode("https://apis.daum.net/search/image?apikey=c981ec9d04d0139cbb3fd3f9da722a8f&q=#{@store.name}&result=6&output=xml")
		xml = Nokogiri::XML(open(url))
			@item = xml.xpath('//item').map do |i| {
				:thumbnail => i.xpath('thumbnail').inner_text
			}
			end
  end

  def main
  	@stores = Store.order(id: :desc).all
  end

  def local
  	@stores = Store.where(district_num: params[:district_num])
  end
end