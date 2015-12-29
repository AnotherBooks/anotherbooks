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
    require 'geo-distance'

it "should work" do
  lon1 = -104.88544
  lat1 = 39.06546

  lon2 = -104.80
  lat2 = lat1

  dist = GeoDistance.distance( lat1, lon1, lat2, lon2 ) # in radians  

  dist = GeoDistance::Haversine.geo_distance( lat1, lon1, lat2, lon2 ).to_meters

  # Change to (lng, lat) mode
  GeoPoint.coord_mode = :lng_lat

  p1, p2 = [[lon1, lat1].geo_point, [lon2, lat2].geo_point]

  dist = GeoDistance::Haversine.geo_distance( lon1, lat1, lon2, lat2)
  dist = GeoDistance::Haversine.geo_distance( p1, p2).to_miles

  @distance = dist.meters
end    


  end

  def main
  	@stores = Store.order(id: :desc).all
  end

  def local
  	@stores = Store.where(district_num: params[:district_num])
  end
end