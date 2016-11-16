class MobilesController < ApplicationController
  def show
    @mobile = Mobile.find params[:id]
  end
end
