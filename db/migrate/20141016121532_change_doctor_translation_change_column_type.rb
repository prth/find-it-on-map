class ChangeDoctorTranslationChangeColumnType < ActiveRecord::Migration
  def change
  	change_column :doctor_translations, :name, :text, :option => 'CHARACTER SET utf8 COLLATE utf8_unicode_ci'
  	change_column :doctor_translations, :address, :text, :option => 'CHARACTER SET utf8 COLLATE utf8_unicode_ci'
  end
end
