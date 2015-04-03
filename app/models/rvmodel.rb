class Rvmodel < ActiveRecord::Base
	belongs_to :camper
	has_one :make
	
end
