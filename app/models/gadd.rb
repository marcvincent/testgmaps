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

	class Gadd < ActiveRecord::Base
	  attr_accessible :latitude, :longitude, :name, :user_id

		belongs_to :user

	  validates :content, :length => {:maximum => 140}

	end
