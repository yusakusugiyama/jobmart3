class AddColumnToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :name, :string
    add_column :companies, :catch_copy, :text
    #事業内容
    add_column :companies, :business, :text
    #仕事内容
    add_column :companies, :job_description, :text
    #求人概要
    add_column :companies, :offer_information, :text
    #応募資格(必須スキル、歓迎スキルなど)
    add_column :companies, :app_qualification, :text
    #年収
    add_column :companies, :annual_income, :text
    add_column :companies, :location, :string
    add_column :companies, :working_hours, :string

  end
end
