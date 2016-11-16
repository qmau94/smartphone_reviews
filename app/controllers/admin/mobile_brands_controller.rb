class Admin::MobileBrandsController < AdminController
  def index
    @mobile_brands = MobileBrand.all
  end

  def new
    @mobile_brand = MobileBrand.new
  end

  def create
    @mobile_brand = MobileBrand.new mobile_brands_params
    if @mobile_brand.save
      flash[:success] = "#{@mobile_brand.name} has been created successfully"
      redirect_to admin_mobile_brands_path
    else
      render :new
    end
  end

  def edit
    @mobile_brand = MobileBrand.find params[:id]
  end

  def update
    @mobile_brand = MobileBrand.find params[:id]
    if @mobile_brand.update_attributes mobile_brands_params
      flash[:success] = "#{@mobile_brand.name} has been updated successfully"
      redirect_to [:admin, @mobile_brand]
    else
      render :edit
    end
  end

  def show
    @mobile_brand = MobileBrand.find params[:id]
  end

  def destroy
    @mobile_brand = MobileBrand.find params[:id]
    if @mobile_brand.destroy
      flash[:success] = "Brand has been deleted successfully"
    else
      flash[:danger] = "Can not delete this brand"
    end
  end

  private
  def mobile_brands_params
    params.require(:mobile_brand).permit MobileBrand::ATTRIBUTES_PARAMS
  end
end
