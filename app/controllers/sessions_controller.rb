class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      sign_in user
      # If the user is a regular user
      if user.type == 0
        redirect_to root_path
      # If the user is a business user  
      else
        redirect_to "/admin"
      end
    else
      @error = 'Incorrect username / password combination.'
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end
end
