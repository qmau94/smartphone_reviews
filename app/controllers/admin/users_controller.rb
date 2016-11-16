class Admin::UsersController < AdminController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      flash[:success] = "#{@user.name} has been created successfully"
      redirect_to admin_users_path
    else
      render :new
    end
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    @user = User.find params[:id]
    if @user.update_attributes user_params
      flash[:success] = "#{@user.name} has been updated successfully"
      redirect_to [:admin, @user]
    else
      flash[:danger] = "#{@user.name} is failed to be updated"
    end
  end
  def destroy
    @user = User.find params[:id]
    if @user.destroy
      flash[:success] = "User has been deleted successfully"
      redirect_to admin_users_path
    else
      flash[:danger] = "User was failed to be deleted"
      render :back
    end
  end

  def show
    @user = User.find params[:id]
  end

  private
  def user_params
    params.require(:user).permit User::ATTRIBUTES_PARAMS
  end
end
