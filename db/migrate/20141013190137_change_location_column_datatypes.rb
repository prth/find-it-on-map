class ChangeLocationColumnDatatypes < ActiveRecord::Migration
  def change
  	change_column :doctors, :locality, :integer
  	change_column :doctors, :city, :integer
  	change_column :doctors, :state, :integer
  	change_column :doctors, :country, :integer
  end
end
