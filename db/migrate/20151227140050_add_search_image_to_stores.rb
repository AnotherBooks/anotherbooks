class AddSearchImageToStores < ActiveRecord::Migration
  def change
    add_column :stores, :search_img, :string
  end
end
