class RouteOrder < ActiveRecord::Base
	belongs_to :routes
	belongs_to :coordinates
end
