class CreateCToULikes < ActiveRecord::Migration
  def change
    create_table :c_to_u_likes do |t|
      t.integer :company_id
      t.integer :user_id
      t.integer :price
      t.timestamps
    end
  end
end
