class RoutePoint < ActiveRecord::Base
  belongs_to :route
  belongs_to :coordinate
end
