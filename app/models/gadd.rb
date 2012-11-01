# == Schema Information
#
# Table name: gadds
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  latitude   :float
#  longitude  :float
#  gmaps      :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  gmaps_zoom :float
#

	class Gadd < ActiveRecord::Base
	  attr_accessible :latitude, :longitude, :name, :gmaps_zoom

		#belongs_to :user

	  validates :name, :length => {:maximum => 140}


	  acts_as_gmappable :latitude => 'lat', :longitude => 'lng'

		def gmaps4rails_address
		#describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki

		end

		def gmaps4rails_infowindow
      "<h1>#{name}</h1>"
    	end

    	def gmaps4rails_marker_picture
 {
		  "picture" => "/images/gmap_marker.png",          # string,  mandatory
			"width" => "20" ,          # integer, mandatory
			"height" => "34",          # integer, mandatory

				                   # See doc here: http://google-maps-utility-library-v3.googlecode.com/svn/trunk/richmarker/docs/reference.html
		 }
		end





	def self.search(search)
	  if search
		 find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
	  else
		 find(:all)
	  end
	end





	end
