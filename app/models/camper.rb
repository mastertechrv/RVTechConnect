class Camper < ActiveRecord::Base
	belongs_to :customer
	has_one :customer
	has_one :manufacturer

end
