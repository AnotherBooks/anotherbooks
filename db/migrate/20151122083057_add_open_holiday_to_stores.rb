class AddOpenHolidayToStores < ActiveRecord::Migration
  def change
    add_column :stores, :open_holiday, :string
  end
end
