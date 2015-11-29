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
permit_params :name, :address, :latitude, :longitude, :introduction, :tel, :instagram_id, :twitter_id, :facebook_id, :blog_url, :website_url, :open_day, :open_holiday


end
