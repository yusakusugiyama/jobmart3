class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :first_name_kana,:string
    add_column :users, :last_name_kana,:string
    add_column :users, :birth_y, :integer
    add_column :users, :birth_m, :integer
    add_column :users, :birth_d, :integer
    add_column :users, :address, :text
    add_column :users, :phone_num, :integer
    add_column :users, :final_education, :text
    add_column :users, :job_history, :text
  end
end
