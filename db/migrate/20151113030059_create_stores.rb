class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
		t.string :name
		t.string :address
		t.float :latitude
		t.float :longitude
		t.text :introduction
		t.string :tel
		t.string :blog_url
		t.string :website_url
		t.string :open_day
		t.string :open_holiday

      t.timestamp null: false
    end
  end
end
