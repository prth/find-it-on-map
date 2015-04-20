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

require 'rails_helper'

RSpec.describe SystemLanguage, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
