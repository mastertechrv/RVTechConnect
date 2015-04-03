class Camper < ActiveRecord::Base
	belongs_to :customer
	has_one :customer
	has_one :make
	has_one :rvmodel

end
