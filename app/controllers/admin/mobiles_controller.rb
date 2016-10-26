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

  private
  def mobile_params
    params.require(:mobile).permit Mobile::ATTRIBUTES_PARAMS
  end
end
