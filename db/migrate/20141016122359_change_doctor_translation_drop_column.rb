class ChangeDoctorTranslationDropColumn < ActiveRecord::Migration
  def change
  	#remove_column :doctor_translations, {:option=>"CHARACTER SET utf8 COLLATE utf8_unicode_ci"}
  end
end
