class AddSnsUrlToStores < ActiveRecord::Migration
  def change
    add_column :stores, :background_image, :string
    add_column :stores, :cover_image, :string
    add_column :stores, :url_name, :string
  end
end
