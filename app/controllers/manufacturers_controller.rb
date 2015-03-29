class ManufacturersController < InheritedResources::Base

  private

    def manufacturer_params
      params.require(:manufacturer).permit(:make)
    end
end

