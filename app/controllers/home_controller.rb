class HomeController < ApplicationController
  def index
  	@campers = Camper.all
  end

  def show 

  end
end
