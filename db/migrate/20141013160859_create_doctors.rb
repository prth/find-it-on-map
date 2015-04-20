class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :email
      t.string :speciality
      t.string :address
      t.string :locality
      t.string :city
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
