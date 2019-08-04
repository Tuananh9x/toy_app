class SessionsController < ApplicationController
  def new
  end

def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
     if user.activated?
     log_in user
      redirect_back_or users_url
     else
      flash[:warning] = "Check your email for activation link"
      redirect_to root_url
     end
   else
      # Create an error message.
   flash[:danger] = 'Invalid email/password combination' # Not quite right!
    render 'new'
   end
 end
  def destroy
  	log_out
    redirect_to root_url
  end

end
