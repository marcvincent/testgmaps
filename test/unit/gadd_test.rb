# == Schema Information
#
# Table name: gadds
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  latitude   :float
#  longitude  :float
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class GaddTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
