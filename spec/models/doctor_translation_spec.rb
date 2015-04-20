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

require 'rails_helper'

RSpec.describe DoctorTranslation, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
