class AdminController < ApplicationController
  before_filter :signed_in_user
  
  def index
    if params[:special] != nil
      title = params[:special]
      description = params[:description]
      schedule_type = 0
      Specials.create({ :title => title, :description => description, :schedule_type => schedule_type })
    end
  end
  
  private

    def signed_in_user
      redirect_to signin_path unless signed_in?
    end
end
