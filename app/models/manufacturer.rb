class Manufacturer < ActiveRecord::Base
	belongs_to :camper
	has_one :camper
end
