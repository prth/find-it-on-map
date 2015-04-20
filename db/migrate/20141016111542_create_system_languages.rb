class CreateSystemLanguages < ActiveRecord::Migration
  def change
    create_table :system_languages do |t|
      t.string :name
      t.string :locale
      t.string :code

      t.timestamps
    end
  end
end
