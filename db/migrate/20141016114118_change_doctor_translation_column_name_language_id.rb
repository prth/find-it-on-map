class ChangeDoctorTranslationColumnNameLanguageId < ActiveRecord::Migration
  def change
  	rename_column :doctor_translations, :language_id, :system_language_id
  end
end
