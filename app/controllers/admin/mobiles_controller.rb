class Admin::MobilesController < AdminController
  def index
    @mobiles = Mobile.all
  end

  def new
    @mobile = Mobile.new
  end

  def create
    @mobile = Mobile.new mobile_params
    if @mobile.save
      flash[:success] = "Phone created!"
      redirect_to admin_mobiles_path
    else
      render :new
    end
  end

  def edit
    @mobile = Mobile.find params[:id]
  end

  def update
    @mobile = Mobile.find params[:id]
    if @mobile.update_attributes mobile_params
      flash[:success] = "#{@mobile.name} has been updated successfully"
      redirect_to [:admin, @mobile]
    else
      render :edit
    end
  end

  def show
    @mobile = Mobile.find params[:id]
  end

  def destroy
    @mobile = Mobile.find params[:id]
    if @mobile.destroy
      flash[:success] = "Mobile has been deleted successfully!"
      redirect_to admin_mobiles_path
    else
      flash[:danger] = "Can delete this phone"
      redirect_to :back
    end
  end

  private
  def mobile_params
    params.require(:mobile).permit Mobile::ATTRIBUTES_PARAMS
  end

end
