class AddLocalToStores < ActiveRecord::Migration
  def change
    add_column :stores, :district_num, :integer
  end
end

