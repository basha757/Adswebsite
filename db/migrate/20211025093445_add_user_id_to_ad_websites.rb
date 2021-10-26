class AddUserIdToAdWebsites < ActiveRecord::Migration[6.1]
  def change
    add_column :ad_websites, :user_id, :integer
    add_index :ad_websites, :user_id
  end
end
