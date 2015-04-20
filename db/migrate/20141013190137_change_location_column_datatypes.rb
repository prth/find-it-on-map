class ChangeLocationColumnDatatypes < ActiveRecord::Migration
  def change
  	change_column :doctors, :locality, 'integer USING CAST(column_name AS integer)'
  	change_column :doctors, :city, 'integer USING CAST(column_name AS integer)'
  	change_column :doctors, :state, 'integer USING CAST(column_name AS integer)'
  	change_column :doctors, :country, 'integer USING CAST(column_name AS integer)'
  end
end
