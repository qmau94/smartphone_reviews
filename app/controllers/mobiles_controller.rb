class MobilesController < ApplicationController
  def show
    @mobile = Mobile.find params[:id]
    if user_signed_in?
      session[:history].delete_at(0) if session[:history].size >3
      session[:history] << @mobile.id unless session[:history].include?(@mobile.id)
    end
  end

  def index
    @mobiles = Mobile.search params[:search]
  end
end
