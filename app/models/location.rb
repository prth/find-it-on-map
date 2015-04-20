# == Schema Information
#
# Table name: locations
#
#  id           :integer          not null, primary key
#  localityname :string(255)
#  locationtype :integer
#  created_at   :datetime
#  updated_at   :datetime
#  latitude     :float
#  longitude    :float
#

class Location < ActiveRecord::Base

	has_many :doctors, inverse_of: :location, foreign_key: "locality"
	
	#searchable do
	#	autocomplete :post_localityname, :using => :localityname
	#end
end
