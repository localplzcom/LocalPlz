class AdminController < ApplicationController
  before_filter :signed_in_user
  
  def index
    if params[:special] != nil
    if @special = current_user.specialss.new(params[:special])   
      # success
      @special.save
      @message = 'Successfully saved'
    else
      # error handling
    end
    end
  end
  
  private

    def signed_in_user
      redirect_to signin_path unless signed_in?
    end
end
