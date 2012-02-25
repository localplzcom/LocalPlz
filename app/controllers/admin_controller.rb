class AdminController < ApplicationController
  before_filter :signed_in_user
  
  def index
    if params[:special] != nil
    @special = current_user.specialss.new(params[:special])
    if @special.save   
      @message = 'Successfully saved'
    end
    end
  end
  
  private

    def signed_in_user
      redirect_to signin_path unless signed_in?
    end
end
