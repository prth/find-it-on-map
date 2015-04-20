# == Schema Information
#
# Table name: doctor_translations
#
#  id                 :integer          not null, primary key
#  doctor_id          :integer
#  system_language_id :integer
#  created_at         :datetime
#  updated_at         :datetime
#  name               :text
#  address            :text
#

class DoctorTranslation < ActiveRecord::Base
	belongs_to :doctor
	belongs_to :system_language

end
