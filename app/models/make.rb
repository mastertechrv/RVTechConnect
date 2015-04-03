class Make < ActiveRecord::Base
	belongs_to :camper
	has_one :rvmodel
end
