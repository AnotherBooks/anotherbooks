class RenameSnsId < ActiveRecord::Migration
  def change
  	rename_column :stores, :facebook_id, :facebook_uid
  	rename_column :stores, :twitter_id, :twitter_uid
  	rename_column :stores, :instagram_id, :instagram_uid
  end
end
