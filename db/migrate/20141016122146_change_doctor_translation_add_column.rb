class ChangeDoctorTranslationAddColumn < ActiveRecord::Migration
  def change
  	add_column :doctor_translations, :name, :text, :option => 'CHARACTER SET utf8 COLLATE utf8_unicode_ci'
  	add_column :doctor_translations, :address, :text, :option => 'CHARACTER SET utf8 COLLATE utf8_unicode_ci'
  end
end
