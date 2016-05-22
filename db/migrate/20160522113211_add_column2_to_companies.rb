class AddColumn2ToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :url, :text
    add_column :companies, :image_url, :text
  end
end
