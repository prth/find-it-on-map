class ChangeLocationColumnNameType < ActiveRecord::Migration
  def change
  	rename_column :locations, :type, :locationtype
  end
end
