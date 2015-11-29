class AddOpenDayToStores < ActiveRecord::Migration
  def change
    add_column :stores, :open_day, :string
  end
end
