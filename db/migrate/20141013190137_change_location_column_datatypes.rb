class ChangeLocationColumnDatatypes < ActiveRecord::Migration
  def change
  	change_column :doctors, :locality, :integer #USING CAST(locality AS integer)'
  	change_column :doctors, :city, :integer #'integer USING CAST(city AS integer)'
  	change_column :doctors, :state, :integer #'integer USING CAST(state AS integer)'
  	change_column :doctors, :country, :integer #'integer USING CAST(country AS integer)'
  end
end
