class CreateDoctorTranslations < ActiveRecord::Migration
  def change
    create_table :doctor_translations do |t|
      t.integer :doctor_id
      t.integer :language_id
      t.text :name
      t.text :address
      
      t.timestamps
    end
  end
end
