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

require 'rails_helper'

RSpec.describe Doctor, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
