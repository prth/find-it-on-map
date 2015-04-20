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

require 'rails_helper'

RSpec.describe Location, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
