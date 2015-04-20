class ChangeDoctorTranslationChangeColumnType < ActiveRecord::Migration
  def change
  	rename_column :doctor_translations, :name, :option => 'CHARACTER SET utf8 COLLATE utf8_unicode_ci'
  	rename_column :doctor_translations, :address, :option => 'CHARACTER SET utf8 COLLATE utf8_unicode_ci'
  end
end
