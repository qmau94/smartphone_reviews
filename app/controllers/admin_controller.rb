class AdminController < ApplicationController
  before_action :verify_admin

  private
  def verify_admin
    if current_user.user?
      flash[:danger] = "You don't have permission to do this action"
      redirect_to root_path
    end
  end
end
