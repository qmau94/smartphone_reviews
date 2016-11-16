class MobilesController < ApplicationController
  def show
    @mobile = Mobile.find params[:id]
  end

  def index
    @mobiles = Mobile.search params[:search]
  end
end
