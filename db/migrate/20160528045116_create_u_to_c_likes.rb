class CreateUToCLikes < ActiveRecord::Migration
  def change
    create_table :u_to_c_likes do |t|
      t.integer :user_id
      t.integer :company_id
      t.integer :price
      t.timestamps
    end
  end
end
