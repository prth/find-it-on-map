class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :localityname
      t.integer :type

      t.timestamps
    end
  end
end
