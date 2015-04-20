# == Schema Information
#
# Table name: system_languages
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  locale     :string(255)
#  code       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class SystemLanguage < ActiveRecord::Base
	has_many :doctor_translations
end
