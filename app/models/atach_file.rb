class AtachFile < ActiveRecord::Base
	belongs_to	:route
	belongs_to	:node
end
