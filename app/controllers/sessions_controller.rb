class SessionsController < ApplicationController

def new
end

def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      flash[:success] = "Connection ok"     
      log_in user
      redirect_to user
    else 
   #not working
    	flash.now[:danger] = 'Invalid email/password combination'
    	render 'new'
    end
  end


  def destroy
    log_out
    flash[:danger] = 'Deconnection ok'
    redirect_to root_url
  end
end
