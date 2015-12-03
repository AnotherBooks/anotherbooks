ActiveAdmin.register Store do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end
permit_params :name, :address, :latitude, :longitude, :introduction, :tel, :blog_url, :website_url, :open_day, :open_holiday, :background_image, :cover_image, :url_name, :facebook_uid, :twitter_uid, :instagram_uid


end
