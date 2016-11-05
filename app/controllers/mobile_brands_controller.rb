class MobileBrandsController < ApplicationController
  def index
    @brands = MobileBrand.all
  end

  def show
    @brand = MobileBrand.find params[:id]
    @mobiles = @brand.mobiles
  end
end
