class Dashboard < ActiveRecord::Base

  has_many :permissions
  has_many :api_servers, :through => :permissions 
	has_many :widgets, -> { order :position }

end