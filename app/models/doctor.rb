# == Schema Information
#
# Table name: doctors
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  speciality :string(255)
#  address    :string(255)
#  locality   :integer
#  city       :integer
#  state      :integer
#  country    :integer
#  created_at :datetime
#  updated_at :datetime
#  latitude   :float
#  longitude  :float
#

class Doctor < ActiveRecord::Base
	
	belongs_to :location, inverse_of: :doctor
	
	has_many :doctor_translations

	geocoded_by :address, :latitude  => :latitude, :longitude => :longitude
end
