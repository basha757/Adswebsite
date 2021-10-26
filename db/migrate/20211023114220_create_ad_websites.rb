class CreateAdWebsites < ActiveRecord::Migration[6.1]
  def change
    create_table :ad_websites do |t|
      t.string :Name
      t.string :Name_of_Bussiness
      t.string :Email
      t.string :Phone_No

      t.timestamps
    end
  end
end
