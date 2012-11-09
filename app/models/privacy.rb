# == Schema Information
#
# Table name: privacies
#
#  id         :integer          not null, primary key
#  type       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Privacy < ActiveRecord::Base
  attr_accessible :type
end
