class AddSnsUrlToStores < ActiveRecord::Migration
  def change
    add_column :stores, :instagram_id, :string
    add_column :stores, :twitter_id, :string
    add_column :stores, :facebook_id, :string
    add_column :stores, :background_image, :string
    add_column :stores, :cover_image, :string
    add_column :stores, :url_name, :string
  end
end
